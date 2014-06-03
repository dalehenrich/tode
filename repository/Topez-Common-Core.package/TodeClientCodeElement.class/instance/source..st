as yet unclassified
source: aString
	| src |
	src := self formatOnAccept
		ifTrue: [ self format: aString ]
		ifFalse: [ aString ].
	^ super source: src