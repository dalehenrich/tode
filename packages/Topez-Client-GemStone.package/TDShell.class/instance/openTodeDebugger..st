stash
openTodeDebugger: aDebuggerLabel
  shellWindow := (TodeDebuggerTranscriptStream stashShell: self)
    openLabel: self shellId asString , ': ' , aDebuggerLabel.
  self windowRegistration.
  ^ shellWindow