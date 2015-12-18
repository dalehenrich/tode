as yet unclassified
nameForNode: aRPDNode
	
	aRPDNode wrapper stringName ifNil: [
		aRPDNode wrapper stringName: (aRPDNode wrapper name ) ].
	^ aRPDNode wrapper stringName
