running
tearDown
	super tearDown.
	client
		ifNotNil: [ | cl |
			cl := client.
			client := nil.
			cl logout ]