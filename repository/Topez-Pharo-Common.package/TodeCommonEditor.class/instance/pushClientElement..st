client element stack
pushClientElement: aTDClientElement
	(self clientElementStack includes: aTDClientElement)
		ifFalse: [ self clientElementStack push: aTDClientElement ]