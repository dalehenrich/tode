as yet unclassified
fromClientElement: aTodeClientElement
	^ self new
		behavior: aTodeClientElement inClass;
		allClassVarNames: aTodeClientElement allClassVarNames;
		allInstVarNames: aTodeClientElement allInstVarNames;
		allSharedPoolNames: aTodeClientElement allSharedPoolNames;
		topez: aTodeClientElement topez;
		yourself