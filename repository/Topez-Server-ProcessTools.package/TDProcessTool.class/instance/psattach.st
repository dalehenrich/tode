as yet unclassified
psattach
  "ps attach @<process-path>"

  | process |
  process := self resolveAtPathReference: (tokens at: 2).
  (TDDebugger new
    topez: topez;
    attachProcess: process;
    windowLabel: process printString;
    yourself) open.
  ^ process