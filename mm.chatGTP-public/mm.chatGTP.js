const max = require("max-api");
const { Configuration, OpenAIApi } = require("openai");

// Replace with your OpenAI API key
const configuration = new Configuration({
  apiKey: "your API key here",
});

const openai = new OpenAIApi(configuration);

// Handle prompt messages from Max
max.addHandler("prompt", async (...args) => {
  const prompt = args.join(" ");
  max.post("Sending to ChatGPT: " + prompt);

  try {
    const res = await openai.createChatCompletion({
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: prompt }],
    });

    const reply = res.data.choices[0].message.content.trim();
    max.outlet(reply);
  } catch (err) {
    max.post("ChatGPT error: " + err.message);
    max.outlet("Error from ChatGPT");
  }
});
