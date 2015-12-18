as yet unclassified
labelForNode: aRPDNode
	
	aRPDNode wrapper stringLabel ifNil: [
		aRPDNode wrapper stringLabel: (aRPDNode wrapper asString) ].
	^ aRPDNode wrapper stringLabel
