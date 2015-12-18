private - utility
lineIdentifierLabels
	^ self lineIdentifiers collect: [ :i | (timelineLabel rtValue: i) asString ]