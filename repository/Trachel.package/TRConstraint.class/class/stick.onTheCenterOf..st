public - sticking
stick: aShape onTheCenterOf: anotherShape
	| b |
	self move: aShape onTheCenterOf: anotherShape. 
	
	b := [ :shape :step | self move: aShape onTheCenterOf: anotherShape ].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b) 
	