as yet unclassified
labelForNode: aRPDNode
	
	aRPDNode wrapper stringLabel ifNil: [
		aRPDNode wrapper stringLabel: (aRPDNode wrapper asServerString: self shell)].
	^ aRPDNode wrapper stringLabel
