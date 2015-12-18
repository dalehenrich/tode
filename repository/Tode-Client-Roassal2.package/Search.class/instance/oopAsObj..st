as yet unclassified
oopAsObj: aOop 

	self assert: (aOop isNotNil) description: 'No oop entered'.
	
	(self workspace tdShell onServerDo: [ 
			(Object _objectForOop: (aOop asInteger)) inspect]) 

	
