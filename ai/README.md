# AI & Machine Learning

AI integrations for Max/MSP — chatbots, speech-to-text, and audio classification.

## Projects

### mm.chatGTP-public
ChatGPT (GPT-3.5 Turbo) in Max/MSP via Node for Max.

**Setup**:
```bash
cd ai/mm.chatGTP-public && npm install
```
Add your OpenAI API key in the code or a `.env` file. Send prompts from the Max patch.

### mm.OpenAI_Deepgram
Live speech-to-text (Deepgram) + text generation (OpenAI) in Max/MSP.

**Setup**:
```bash
brew install sox          # macOS audio capture
```
Add your API keys to `code/.env`:
```
OPENAI_API_KEY="your-key"
DEEPGRAM_API_KEY="your-key"
```
Open `patchers/mainChat.maxpat`.

### mm.jweb-mediapipe-audio
Real-time audio classification using Google MediaPipe, running in Max's jweb browser. No local dependencies — MediaPipe loads from CDN.

**Setup**: Open `mm.jweb-mediapipe-audio.maxpat`, select audio input, classification runs in real-time.

## Requirements
- Max/MSP 8+
- Node.js (for ChatGPT and Deepgram)
- API keys: OpenAI, Deepgram (where applicable)
- sox (for Deepgram live audio)
