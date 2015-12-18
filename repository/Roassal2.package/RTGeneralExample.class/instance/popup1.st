popup
popup1
	"
	self new popup1
	"
	| v els |
	v := RTView new.
	v @ RTDraggableView.
	els := (RTBox new size: 20) elementsOn: (1 to: 100).
	els @ (RTPopup new textElement: [ :e | e model printString ]).
	els @ RTDraggable.
	els when: TRMouseClick do: [ :evt | evt element inspect ].
	v addAll: els.
	RTGridLayout on: els.
	v open.
