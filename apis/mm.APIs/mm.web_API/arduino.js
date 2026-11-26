// arduino.js — talk to an Arduino from the browser with Web Serial (Chrome / Edge).
// The Arduino runs put_this_on-your_arduino.ino (the CMD sketch, 9600 baud) and
// understands text lines like:
//   w s 9 90     servo on pin 9 to 90 degrees
//   w a 5 128    PWM on pin 5 to 128
//   w d 7 1      pin 7 HIGH
//   mode none    don't send pin readings back
//
// Web Serial only works on http://localhost or https:// (not from a file:// page).

const Arduino = {
  supported: "serial" in navigator,
  connected: false,
  ready: false,          // true ~2 s after connecting (the board resets when the port opens)
  onLine: null,          // function(line) — text the Arduino sends back
  onChange: null,        // function() — connected / disconnected

  async connect(baudRate = 9600) {
    this.port = await navigator.serial.requestPort();      // the browser shows a port picker
    await this.port.open({ baudRate });
    this.writer = this.port.writable.getWriter();
    this.connected = true;
    this.ready = false;
    this._readLoop();
    if (this.onChange) this.onChange();
    await new Promise((r) => setTimeout(r, 2000));          // wait for the board to start
    this.ready = true;
    await this.send("mode none");
  },

  async send(text) {
    if (!this.writer) return;
    try {
      await this.writer.write(new TextEncoder().encode(text + "\n"));
    } catch (error) {
      console.warn("serial write failed:", error);
    }
  },

  async disconnect() {
    this.connected = this.ready = false;
    try { await this.reader.cancel(); await this.readClosed; } catch {}
    try { this.writer.releaseLock(); } catch {}
    try { await this.port.close(); } catch {}
    this.writer = this.reader = this.port = null;
    if (this.onChange) this.onChange();
  },

  // read text from the Arduino, line by line
  async _readLoop() {
    const decoder = new TextDecoderStream();
    this.readClosed = this.port.readable.pipeTo(decoder.writable).catch(() => {});
    this.reader = decoder.readable.getReader();
    let buffer = "";
    try {
      while (true) {
        const { value, done } = await this.reader.read();
        if (done) break;
        buffer += value;
        let i;
        while ((i = buffer.indexOf("\n")) >= 0) {
          const line = buffer.slice(0, i).trim();
          buffer = buffer.slice(i + 1);
          if (line && this.onLine) this.onLine(line);
        }
      }
    } catch {
      // the cable was pulled out, or we disconnected
    }
    if (this.connected) this.disconnect();
  },
};

// unplugging the USB cable
if (Arduino.supported) {
  navigator.serial.addEventListener("disconnect", (e) => {
    if (Arduino.port === e.target) Arduino.disconnect();
  });
}
