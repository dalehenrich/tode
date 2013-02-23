stash
open: aString adornmentColor: aColor
  adornmentColor := aColor.
  sessionName := aString.
  shellWindow := (StashShellTranscriptStream stashShell: self)
    openLabel: self shellId asString , ': ' , self label.
  self windowRegistration.
  ^ shellWindow