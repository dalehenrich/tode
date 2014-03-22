stash
openOnSessionDescription: aSessionDescription
	sessionDescription := aSessionDescription.
	sessionName := sessionDescription name.
	adornmentColor := sessionDescription adornmentColor.
	shellWindow := (console := TodeConsole todeConsole: self) openLabel: self shellId asString , ': ' , self label.
	shellWindow activate.
	self windowRegistration.
	^ shellWindow