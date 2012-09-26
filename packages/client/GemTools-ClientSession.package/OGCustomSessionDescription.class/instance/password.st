accessing
password

	password == nil ifTrue: [ password := self defaultPassword ].
	^password