stash
openOnSessionDescription: aSessionDescription
	self sessionDescription: aSessionDescription.
	console := TodeConsole todeConsole: self.
	shellWindow := console openAsMorphLabel: self shellId asString , ': ' , self label welcome: true.
	shellWindow activate.
	self windowRegistration.
	^ shellWindow