editing
filterAndForwardEvent: event
	(self editView filterAndForwardEvent: event) ifNotNil: [ ^ super keyStroke: event ]