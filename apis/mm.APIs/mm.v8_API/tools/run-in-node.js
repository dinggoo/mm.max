// Test api_reader.js without Max, in the VS Code terminal (Node 18+).
// The script runs exactly as it does in [v8]; outlet() and post() are printed here.
//
//   node tools/run-in-node.js "api weather"
//   node tools/run-in-node.js "url https://api.wheretheiss.at/v1/satellites/25544" bang paths
//   node tools/run-in-node.js "api quakes" "peek features[0].properties.title"
//
// Every argument is one Max message. Between messages we wait until fetching is done.
// Debugging: set a breakpoint in api_reader.js and start this file with F5 (Node.js).

const vm = require("vm");
const fs = require("fs");
const path = require("path");

const dir = path.join(__dirname, "..");
const outNames = ["dict", "number", "info"];

const max = {
  inlets: 1, outlets: 1, autowatch: 0,
  jsarguments: ["api_reader.js"],
  messagename: "",
  post: (...a) => process.stdout.write(a.join(" ")),
  error: (...a) => process.stderr.write(a.join(" ")),
  outlet: (i, ...a) => console.log(`  outlet ${i} (${outNames[i]}):`, a.join(" ")),
  setinletassist() {}, setoutletassist() {},
  Dict: class { constructor(n) { this.name = n; } parse(s) { this.json = s; } },
  require: (name) => {
    const exports = {};
    vm.runInNewContext(fs.readFileSync(path.join(dir, name + ".js"), "utf8"), { exports });
    return exports;
  },
  console, fetch, setTimeout, clearTimeout, AbortController,
};

vm.createContext(max);
const file = path.join(dir, "api_reader.js");
vm.runInContext(fs.readFileSync(file, "utf8"), max, { filename: file });

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

(async () => {
  const messages = process.argv.slice(2);
  if (!messages.length) messages.push("api weather", "paths");
  for (const m of messages) {
    const [name, ...args] = m.split(" ");
    console.log(`\n> ${m}`);
    max.messagename = name;
    const fn = max[name];
    if (typeof fn === "function" && !fn.local) fn(...args.map((a) => (isNaN(a) ? a : Number(a))));
    else max.anything(...args);
    await sleep(100);
    while (vm.runInContext("state.busy", max)) await sleep(50);
  }
  vm.runInContext("stop()", max); // no more automatic fetching: Node may exit
})();
