as yet unclassified
example03
	"
	self new example03
	"
	| builder v els |
	v := RTView new.
	builder := RTShapeBuilder new.
	builder rectangle 
				width: 50;
				fillColor: (Color purple alpha: 0.3);
				withText.
	els := builder elementsOn: (1 to: 50).
	els @ RTDraggable.
	v addAll: els.
	RTCellLayout on: v elements.
	v open