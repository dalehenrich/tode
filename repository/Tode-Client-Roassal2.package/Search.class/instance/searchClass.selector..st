as yet unclassified
searchClass: aClass selector: aMethod
	self assert: (aClass isNotNil) description: 'No class entered'.

	aMethod ifNil: [
		(self workspace tdShell onServerDo: [ 
			(Object evaluate: aClass) selectors
		]) inspect ] ifNotNil: [
			(self workspace tdShell onServerDo: [
				(Object evaluate: aClass) selectors select: [:s | s includesSubString: aMethod ]
			]) inspect	]

	
