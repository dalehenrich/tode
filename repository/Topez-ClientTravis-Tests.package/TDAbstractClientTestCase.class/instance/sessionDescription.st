accessing
sessionDescription
	self alternateSessionDescriptionDefined
		ifTrue: [ ^ self class alternateSessionDescription ].
	^ (Smalltalk at: #GsDevKit_home)
		sessionDescriptionNamed: (Smalltalk at: #SCIGemStoneServerConfigSpec) defaultSessionName