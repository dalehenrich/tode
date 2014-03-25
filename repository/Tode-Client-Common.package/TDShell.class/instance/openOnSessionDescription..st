stash
openOnSessionDescription: aSessionDescription
	sessionDescription := aSessionDescription.
	sessionName := sessionDescription name.
	adornmentColor := sessionDescription adornmentColor.
	console := TodeConsole todeConsole: self.
	shellWindow := console openAsMorphLabel: self shellId asString , ': ' , self label welcome: true.
	shellWindow activate.
	self windowRegistration.
	^ shellWindow