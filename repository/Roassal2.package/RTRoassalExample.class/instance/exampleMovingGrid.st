sources
exampleMovingGrid

| v es size initialLayout layout step |
v := RTView new.
v @ RTDraggableView.

size := 10.
es := (RTEllipse new size: 20; color: (Color red alpha: 0.4)) elementsOn: (1 to: (size * size)).
v addAll: es.
es @ RTDraggable @ RTPopup.
"es when: TRMouseEnter do: [ :evt | evt element translateBy: (20 atRandom @ 20 atRandom) - (10 @ 10) ]."

RTEdge buildEdgesFromElements: es
	from: #yourself
	toAll: [ :value |
		(value \\ size) = 0
			ifTrue: [ Array with: value + size ]
			ifFalse: [ Array with: value + 1 with: value + size ] ]
	inView: v.

initialLayout := RTGridLayout new
	lineItemsCount: size;
	on: es.
layout := RTForceBasedLayout new initialLayout: initialLayout.
step :=  RTSpringLayoutStepping new 
				view: v;
				layout: layout.
v addAnimation: step.
	

	^ v