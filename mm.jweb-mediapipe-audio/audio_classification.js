
//
// Mediapipe Sound Classification Example
// written by Mark Meeuwenoord
// 2024, www.markmeeuwenoord.nl
//
// MIT License
//

(async () => {
    const { AudioClassifier, FilesetResolver } = await import("https://cdn.jsdelivr.net/npm/@mediapipe/tasks-audio@0.10.0");
    const demosSection = document.getElementById("demos");
    let isPlaying = false;
    let audioClassifier;
    let audioCtx;
    let classifyEnabled = false;

    function outputMax(mess) {
        window.max.outlet(mess);
    }

    function outputMaxDict(dstr) {
        window.max.outlet("dictionary", dstr);
    }

    function setMaxDict(d) {
        window.max.setDict('audio_classification_dict', d);
    }

    const createAudioClassifier = async () => {
        const audio = await FilesetResolver.forAudioTasks(
            "https://cdn.jsdelivr.net/npm/@mediapipe/tasks-audio@0.10.0/wasm"
        );

        audioClassifier = await AudioClassifier.createFromOptions(audio, {
            baseOptions: {
                modelAssetPath: "https://storage.googleapis.com/mediapipe-models/audio_classifier/yamnet/float32/1/yamnet.tflite"
            }
        });
        demosSection.classList.remove("invisible");
    };
    createAudioClassifier();

    document.getElementById("classifyBtn1").addEventListener("click", async function () {
        await runAudioClassification("audioClip1", "audioResult1");
    });

    document.getElementById("classifyBtn2").addEventListener("click", async function () {
        await runAudioClassification("audioClip2", "audioResult2");
    });

    async function runAudioClassification(demo, resultText) {
        const output = document.getElementById(resultText);
        const audioClip = document.getElementById(demo);

        if (!audioClip.paused) {
            audioClip.pause();
            return;
        }

        if (!audioClassifier) {
            alert("Audio Classifier still loading. Please try again");
            return;
        }

        if (!audioCtx) {
            audioCtx = new AudioContext();
        }

        audioClip.play();

        const url = audioClip.src;
        const response = await fetch(url);

        const sample = await response.arrayBuffer();
        const audioBuffer = await audioCtx.decodeAudioData(sample);

        const results = await audioClassifier.classify(
            audioBuffer.getChannelData(0),
            audioBuffer.sampleRate
        );

        displayClassificationResults(results, output);
    }

    function displayClassificationResults(results, output) {
        removeAllChildNodes(output);

        const tr = document.createElement("tr");

        const categoryTd = document.createElement("th");
        const categoryNode = document.createTextNode("Category");
        categoryTd.appendChild(categoryNode);

        const scoreTd = document.createElement("th");
        const scoreNode = document.createTextNode("Confidence");
        scoreTd.appendChild(scoreNode);

        tr.appendChild(categoryTd);
        tr.appendChild(scoreTd);
        output.appendChild(tr);

        const classificationResults = {};

        for (const result of results) {
            const categories = result.classifications[0].categories;
            const topCategory = categories[0].categoryName;
            const topScore = parseFloat(categories[0].score.toFixed(3));

            classificationResults[topCategory] = topScore;

            const tr = document.createElement("tr");

            const categoryTd = document.createElement("td");
            const categoryNode = document.createTextNode(topCategory);
            categoryTd.appendChild(categoryNode);

            const scoreTd = document.createElement("td");
            const scoreNode = document.createTextNode(topScore);
            scoreTd.appendChild(scoreNode);

            tr.appendChild(categoryTd);
            tr.appendChild(scoreTd);
            output.appendChild(tr);
        }

        setMaxDict({
            audio_classification_dict: classificationResults
        });
        outputMax("dictionary audio_classification_dict");
        output.className = "";
    }

    function removeAllChildNodes(parent) {
        while (parent.firstChild) {
            parent.removeChild(parent.firstChild);
        }
    }

    const streamingBt = document.getElementById("microBt");
    const audioDeviceSelect = document.getElementById("audioDeviceSelect");

    streamingBt.addEventListener("click", async function () {
        if (classifyEnabled) {
            classifyEnabled = false;
            streamingBt.innerText = "START CLASSIFYING";
        } else {
            classifyEnabled = true;
            streamingBt.innerText = "STOP CLASSIFYING";
            await runStreamingAudioClassification();
        }
    });

    async function runStreamingAudioClassification() {
        const output = document.getElementById("microResult");
        const selectedDeviceId = audioDeviceSelect.value;
        const constraints = { audio: { deviceId: selectedDeviceId } };
        let stream;

        try {
            stream = await navigator.mediaDevices.getUserMedia(constraints);
        } catch (err) {
            console.log("The following error occurred: " + err);
            alert("getUserMedia not supported on your browser");
            return;
        }

        if (!audioCtx) {
            audioCtx = new AudioContext({ sampleRate: 16000 });
        } else if (audioCtx.state === "running") {
            await audioCtx.suspend();
            return;
        }

        await audioCtx.resume();

        const source = audioCtx.createMediaStreamSource(stream);
        const scriptNode = audioCtx.createScriptProcessor(16384, 1, 1);

        scriptNode.onaudioprocess = async function (audioProcessingEvent) {
            if (!classifyEnabled) return;

            const inputBuffer = audioProcessingEvent.inputBuffer;
            let inputData = inputBuffer.getChannelData(0);

            const result = await audioClassifier.classify(inputData);
            const categories = result[0].classifications[0].categories;

            const classificationResults = {};

            for (const category of categories) {
                const categoryName = category.categoryName;
                const confidence = parseFloat(category.score.toFixed(3));
                classificationResults[categoryName] = confidence;
            }

            setMaxDict({
                audio_classification_dict: classificationResults
            });
            outputMax("dictionary audio_classification_dict");
        };

        source.connect(scriptNode);
        scriptNode.connect(audioCtx.destination);
    }

    // Populate the dropdown menu with available audio devices
    async function populateAudioDeviceSelect() {
        const devices = await navigator.mediaDevices.enumerateDevices();
        const audioDevices = devices.filter(device => device.kind === 'audioinput');

        audioDevices.forEach(device => {
            const option = document.createElement('option');
            option.value = device.deviceId;
            option.text = device.label || `Microphone ${audioDeviceSelect.options.length + 1}`;
            audioDeviceSelect.add(option);
        });
    }

    // Call the function to populate the dropdown menu
    populateAudioDeviceSelect();
})();
