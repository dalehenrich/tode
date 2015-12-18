hooks
initializeElement: anElement
	view := anElement.
	self removeDraggableViewInteraction.
	draggingView := false.
	view canvas when: TRMouseRightDragStart do: [ :e | draggingView := true ].
	view canvas when: TRMouseLeftDragStart do: [ :e | 
		draggingView := false.
		self selectionStart. ].
	
	view canvas when: TRMouseDragging do: [ :e |
		draggingView
			ifTrue: [ self dragViewWithEvent: e ]
			ifFalse: [ self updateSelectableShapeWithEvent: e. ]. ].
	
	view canvas when: TRMouseDragEnd do: [ :e | 
		draggingView
			ifTrue: [ draggingView := false.  ]
			ifFalse: [ self selectionEnd ] ].
	