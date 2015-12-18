public - sticking
stick: aShape below: anotherShape
	| b |
	self move: aShape below: anotherShape. 
	b := [ :shape :step | self move: aShape below: anotherShape ].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b) 
	
	
	