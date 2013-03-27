stash
openTodeDebugger: aDebuggerLabel
   shellWindow := (TodeDebugConsole todeConsole: self)
    openLabel: self shellId asString , ': ' , aDebuggerLabel.
  self windowRegistration.
  ^ shellWindow