as yet unclassified
todeServerCreationString
	| str optionsString |
	str := self todeServerAccessString , ' createFor: ' , self shell shellId asString.
	true ifTrue: [ optionsString := self class slowConnection
		ifTrue: [ '' ]
		ifFalse: [ '#transcript' ].
	str := str , ' options: #(' , optionsString , ')'].
	^ str