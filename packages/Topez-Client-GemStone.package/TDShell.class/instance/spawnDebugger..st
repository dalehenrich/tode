accessing
spawnDebugger: aDebuggerLabel
  | spawn |
  spawn := self copy.
  spawn openTodeDebugger: aDebuggerLabel.
  spawn windowRegistration.
  ^ spawn topezClient topezServerOop