accessing
spawnDebugger: aDebuggerLabel
  | topezOop |
  topezOop := self topezClientForwarder spawnDebugger: aDebuggerLabel.
  ^ Object _objectForOop: topezOop