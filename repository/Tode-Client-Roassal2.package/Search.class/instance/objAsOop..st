as yet unclassified
objAsOop: aObj 

	self assert: (aObj isNotNil) description: 'No object entered'.
	
	(self workspace tdShell onServerDo: [ 
			(Object evaluate: aObj) asOop]) inspect 

	