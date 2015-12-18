as yet unclassified
= otherRPDWeakWrapper
	(otherRPDWeakWrapper wrappedObject = nil) ifTrue: [  ^false ].
	^ otherRPDWeakWrapper wrappedObject == self wrappedObject.