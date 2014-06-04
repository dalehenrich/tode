class initialization
cmdKeysInText
	"for now CTL-key expected to be primary on Windows and Linux"

	Smalltalk os isMacOS
		ifTrue: [ ^ true ].
	^ false