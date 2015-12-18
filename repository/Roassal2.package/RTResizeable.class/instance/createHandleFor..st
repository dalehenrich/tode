hooks
createHandleFor: element

	| handle |
	handle := (RTEllipse new size: 10) element.
	handle addCallback: (TRTranslationCallback block: [ :shape :step | 
		| tStep newSize |
		tStep := handle position - element encompassingRectangle bottomRight + (handle extent / 2).
		newSize := (element extent + (tStep)) max: (20 @ 20).
		element translateBy: (tStep / 2).
		element extent: newSize ]).
	handle @ RTDraggable.
	handle when: TRMouseLeave do: [ :evt | self removeResizeHandleOn: element ].

	^ handle