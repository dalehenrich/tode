accessing
gemHost

	gemHost == nil ifTrue: [ gemHost := self defaultGemHost ].
	^gemHost