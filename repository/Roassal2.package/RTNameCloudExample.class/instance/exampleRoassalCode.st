sources
exampleRoassalCode

	| b |
	b := RTNameCloud new.
	RTObject withAllSubclasses do: [ :c | 
		b addStrings: (c rtmethods collect: #getSource) ].
	b build.
	^ b view