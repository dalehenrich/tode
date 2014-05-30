accessing
gemTask

	gemTask == nil ifTrue: [ gemTask := self defaultGemTask ].
	^gemTask