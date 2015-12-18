utility
makeElements: elements draggableByTrachelShape: trachelShape
	| callback |
	callback := TRTranslationCallback block: [ :shape :step | 
		| topLeft |
		topLeft := trachelShape encompassingRectangle topLeft.
		elements translateTo: topLeft + (elements extent / 2) ].
	trachelShape addCallback: callback 