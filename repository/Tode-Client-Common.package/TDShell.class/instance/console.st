stash
console
	false
		ifTrue: [ 
			console
				ifNil: [ 
					console := TodeConsole todeConsole: self.
					shellWindow := console openAsMorphLabel: self shellId asString , ': ' , self label welcome: true.
					shellWindow activate.
					self windowRegistration ] ].
	^ console