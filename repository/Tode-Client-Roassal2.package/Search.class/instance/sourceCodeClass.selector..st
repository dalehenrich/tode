as yet unclassified
sourceCodeClass: aClass selector: aMethod
	self assert: (aClass isNotNil) description: 'No class entered'.
	self assert: (aMethod isNotNil) description: 'No method entered'.
	
	(self workspace tdShell onServerDo: [ 
			(Object evaluate: aClass) sourceCodeAt: aMethod ]) inspect 

	
