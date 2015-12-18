as yet unclassified
example02
	"
	self new example02
	"
	| builder v |
	v := RTView new.
	builder := RTShapeBuilder new.
	builder rectangle 
				size: 50; 
				fillColor: (Color purple alpha: 0.3);
				withText.
	v addAll: (builder elementsOn: (1 to: 50)).
	RTCellLayout on: v elements.
	v open