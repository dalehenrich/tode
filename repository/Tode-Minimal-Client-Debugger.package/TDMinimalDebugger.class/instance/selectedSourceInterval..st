accessing
selectedSourceInterval: anInterval
	^ ((self browser paneNamed: #code) port: #selectionInterval) value: anInterval