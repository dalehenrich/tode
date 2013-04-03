accessing
stoneName

	stoneName == nil ifTrue: [ stoneName := self defaultStoneName ].
	^stoneName