stash
open
  shellWindow := (StashShellTranscriptStream stashShell: self) openLabel: self shellId asString , ': ' , self label.
  self windowStatus.
  ^ shellWindow