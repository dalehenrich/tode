as yet unclassified
path: element
	| e path |
	e := element.
	path := OrderedCollection new.
	path add: e.
	[ e attributes includesKey: #parent ] whileTrue: [ 
		e := e attributes at: #parent.
		(e isNil) ifTrue: [ ^ path ].
		path add: e. ].
	^ path.