// Short type definitions for the Max [v8] object, only for autocomplete in VS Code.
// Max does not use this file. Full API: https://docs.cycling74.com/apiref/js

/** Number of inlets/outlets of the object (set at the top of your script). */
declare var inlets: number;
declare var outlets: number;
/** 1 = reload the script as soon as the file changes on disk (handy with VS Code). */
declare var autowatch: number;
/** Arguments in the object box: [v8 mijnscript.js a b] → ["mijnscript.js", "a", "b"] */
declare var jsarguments: any[];
/** Name of the message currently coming in (handy in anything()). */
declare var messagename: string;
/** Index of the inlet the current message arrived at. */
declare var inlet: number;

/** Send a message out of an outlet: outlet(0, "hallo", 1, 2.5) */
declare function outlet(index: number, ...args: any[]): void;
/** Print to the Max Console (add "\n" at the end yourself). */
declare function post(...args: any[]): void;
/** Print an error (red) to the Max Console. */
declare function error(...args: any[]): void;
/** Send to a [receive name] anywhere in Max. */
declare function messnamed(name: string, ...args: any[]): void;
declare function setinletassist(index: number, text: string): void;
declare function setoutletassist(index: number, text: string): void;
/** Load a module (exports.xxx) from the Max search path. */
declare function require(name: string): any;
declare var exports: any;

/** A Max dictionary, shared with [dict name] in the patch. */
declare class Dict {
  constructor(name?: string);
  readonly name: string;
  /** Fill the dict from a JSON string. */
  parse(json: string): void;
  /** Return the contents as a JSON string. */
  stringify(): string;
  get(key: string): any;
  set(key: string, ...value: any[]): void;
  getkeys(): string[] | string | null;
  clear(): void;
}

/** Repeating or delayed task in the Max scheduler. */
declare class Task {
  constructor(fn: Function, thisArg?: any, ...args: any[]);
  interval: number;
  repeat(count?: number, initialDelay?: number): void;
  schedule(delay?: number): void;
  cancel(): void;
}
