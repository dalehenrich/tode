editing
keyStroke: evt

	(self editView model filterAndForwardEvent: evt)
		ifNotNil: [^ super keyStroke: evt]
