public - sticking
stick: aShape onTheRightOf: anotherShape
	| b |
	self move: aShape onTheRightOf: anotherShape. 
	
	b := [ :shape :step | self move: aShape onTheRightOf: anotherShape ].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b) 
	