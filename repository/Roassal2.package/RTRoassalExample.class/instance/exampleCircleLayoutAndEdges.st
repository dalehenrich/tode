sources
exampleCircleLayoutAndEdges

	| v els |
	v := RTView new.
	els := RTBox new size: 10; elementsOn: (1 to: 100).
	v addAll: els.
	els @ RTDraggable.
	RTEdge buildEdgesFromObjects: (1 to: 100) from: [ :value | value // 2 ] to: #yourself using: (RTLine new color: (Color blue alpha: 0.4); withVerticallAttachPoint; yourself) inView: v.
	RTCircleLayout new initialRadius: 260; on: v elements.
	v @ RTDraggableView.

	^ v