as yet unclassified
getSessionDescription
	| sessDesc |
	sessDesc := self sessionDescription.
	self effectiveApiVersion < '1.2.0' asMetacelloVersionNumber
		ifTrue: [ 
			| sessDescName |
			"server cannot tolerate netLDIPort and netLDIPortRange instance variables"
			sessDescName := sessDesc name.
			sessDesc := sessDesc copy.
			sessDesc
				name: sessDescName;
				netLDIPort: nil;
				netLDIPortRange: nil ].
	self effectiveApiVersion < '1.2.1' asMetacelloVersionNumber
		ifTrue: [ 
			| sessDescName |
			"server cannot tolerate authorId instance variables"
			sessDescName := sessDesc name.
			sessDesc := sessDesc copy.
			sessDesc
				name: sessDescName;
				authorId: nil ].
	^ self objectSerializer toString: sessDesc