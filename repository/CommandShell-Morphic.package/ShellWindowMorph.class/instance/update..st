updating
update: something

	(something == #doCommand)
		ifTrue:
			[^ self accept].
	(something == #exit)
		ifTrue:
			[^ self owner release; delete].
	^ super update: something
