public - sticking
stick: aShape onTheTopLeftOf: anotherShape
	| b |
	self move: aShape onTheTopLeftOf: anotherShape. 
	
	b := [ :shape :step | self move: aShape onTheTopLeftOf: anotherShape ].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b) 
	