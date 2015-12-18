translator protocol
minBrightnessFor: anEntity
	
	^minBrightness isNil
		ifTrue: [0.0]
		ifFalse: [minBrightness rtValue: anEntity]