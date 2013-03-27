stash
openStash: aString adornmentColor: aColorOrNil
  aColorOrNil
    ifNil: [ adornmentColor := (self topezClientClass sessionNamed: aString) adornmentColor ]
    ifNotNil: [ :color | adornmentColor := color ].
  sessionName := aString.
  shellWindow := (StashShellTranscriptStream stashShell: self)
    openLabel: self shellId asString , ': ' , self label.
  self windowRegistration.
  ^ shellWindow