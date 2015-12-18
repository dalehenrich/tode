public - sticking
stick: aShape onTheBottomLeftOf: anotherShape
	| b |
	self move: aShape onTheBottomLeftOf: anotherShape. 
	
	b := [ :shape :step | self move: aShape onTheBottomLeftOf: anotherShape ].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b) 