as yet unclassified
nameForNode: aRPDNode
	
	aRPDNode wrapper stringName ifNil: [
		aRPDNode wrapper stringName: (aRPDNode wrapper onServerName: self shell) ].
	^ aRPDNode wrapper stringName
