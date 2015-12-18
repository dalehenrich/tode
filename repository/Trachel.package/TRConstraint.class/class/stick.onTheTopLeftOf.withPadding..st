public - sticking
stick: aShape onTheTopLeftOf: anotherShape withPadding: padding
	| b |
	self move: aShape onTheTopLeftOf: anotherShape withPadding: padding. 
	
	b := [ :shape :step | self move: aShape onTheTopLeftOf: anotherShape withPadding: padding ].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b) 
	