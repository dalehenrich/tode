stash
openConsole: aString adornmentColor: aColorOrNil
  aColorOrNil
    ifNil: [ adornmentColor := (self topezClientClass sessionNamed: aString) adornmentColor ]
    ifNotNil: [ :color | adornmentColor := color ].
  sessionName := aString.
  shellWindow := (TodeConsole todeConsole: self)
    openLabel: self shellId asString , ': ' , self label.
  self windowRegistration.
  ^ shellWindow