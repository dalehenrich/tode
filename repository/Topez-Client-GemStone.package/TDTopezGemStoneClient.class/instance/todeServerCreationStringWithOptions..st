as yet unclassified
todeServerCreationStringWithOptions: withOptions
	| str optionsString |
	str := self todeServerAccessString , ' createFor: ' , self shell shellId asString.
	withOptions
		ifTrue: [ 
			optionsString := self class slowConnection
				ifTrue: [ '' ]
				ifFalse: [ '#transcript' ].
			str := str , ' options: #(' , optionsString , ')' ].
	^ str