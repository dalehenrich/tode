public - sticking
stick: aShape onTheLeftOf: anotherShape
	| b |
	self move: aShape onTheLeftOf: anotherShape. 
	
	b := [ :shape :step | self move: aShape onTheLeftOf: anotherShape ].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b) 