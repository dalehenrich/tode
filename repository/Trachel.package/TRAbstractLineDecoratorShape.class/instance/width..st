accessing
width: anObject
	anObject  = nil 
		ifTrue: [ width := self defaultWidth. ]
		ifFalse: [ width := anObject ]