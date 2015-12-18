public - sticking
stick: aShape onTheTopLeftOf: anotherShape withWidthPadding: widthPadding withHeightPadding: heightPadding
	| b |
	self move: aShape onTheTopLeftOf: anotherShape withWidthPadding: widthPadding withHeightPadding: heightPadding. 

	b := [ :shape :step | self move: aShape onTheTopLeftOf: anotherShape withWidthPadding: widthPadding withHeightPadding: heightPadding].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b).