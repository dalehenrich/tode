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
	^ self objectSerializer toString: sessDesc