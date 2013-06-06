stash
openTodeDebugger: aDebuggerLabel
  shellWindow := (console := TodeDebugConsole todeConsole: self)
    openLabel: self shellId asString , ': ' , aDebuggerLabel.
  self windowRegistration.
  ^ shellWindow