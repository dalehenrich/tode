accessing
size: anObject
	anObject  = nil 
		ifTrue: [ size := self defaultSize. ]
		ifFalse: [ size := anObject ]
	
	