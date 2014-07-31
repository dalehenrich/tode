editing
keyStroke: event
	(self editView model filterAndForwardEvent: event) ifNotNil: [ ^ super keyStroke: event ]