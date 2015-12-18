translator protocol
maxBrightnessFor: anEntity
	
	^maxBrightness isNil
		ifTrue: [1.0]
		ifFalse: [maxBrightness rtValue: anEntity]