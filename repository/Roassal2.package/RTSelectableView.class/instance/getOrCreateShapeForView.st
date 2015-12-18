as yet unclassified
getOrCreateShapeForView
	^ (view attributes includesKey: self key) 
		ifTrue: [ view attributes at: self key ]
		ifFalse: [ | s |
			s := shapeBuilder elementOn: self.
			view add: s.
			view attributes at: self key put: s.
			s ].