sources
exampleArrow
| v es c arrow |
v := RTView new.
c := RTMultiLinearColor new.
es := (RTEllipse new size: 30; color: [ :e | c level: e / 10 ]) elementsOn: (1 to: 10).
v addAll: es.
es @ RTDraggable.

arrow := RTArrowedLine new 
			color: Color red; 
			attachPoint: RTVerticalAttachPoint instance.

RTEdge 
	buildEdgesFromObjects: (1 to: 10) 
	from: [ :n | n // 2 ] 
	to: #yourself 
	using: arrow
	inView: v.

RTTreeLayout new on: es.

	^ v