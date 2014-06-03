stash
spawn: aString adornmentColor: aColorOrNil
	adornmentColor := aColorOrNil.
	sessionName := aString.
	console := TodeConsole todeConsole: self.
	shellWindow := console openAsMorphLabel: self shellId asString , ': ' , self label welcome: false.
	shellWindow activate.
	self windowRegistration.
	^ shellWindow