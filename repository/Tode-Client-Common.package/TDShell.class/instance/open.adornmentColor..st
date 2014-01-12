stash
open: aString adornmentColor: aColorOrNil
	aColorOrNil ifNil: [ adornmentColor := self adornmentColorFor: aString ] ifNotNil: [ :color | adornmentColor := color ].
	sessionName := aString.
	shellWindow := (console := TodeConsole todeConsole: self) openLabel: self shellId asString , ': ' , self label.
	shellWindow activate.
	self windowRegistration.
	^ shellWindow