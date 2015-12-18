sources
example03

	
	| b  |
	b := RTCircularTreeMapBuilder new.
	
	b shape
		color: Color transparent;
		borderColor: Color black;
		if: [ :cls | cls subclasses isEmpty ] fillColor: [ :cls| 
			(Smalltalk includesKey: (cls name, 'Test') asSymbol) ifTrue: [ Color green ]
			ifFalse: [ Color purple ] ].
	b
		baseradius: 200;
		weight: [ :cls | cls withAllSubclasses size].
	b explore: RTObject
		using: #subclasses.
	
	b build.
	^ b view