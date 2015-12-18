hooks
initializeElement: element
	element when: TRMouseEnter do: [ :evt | self showResizeHandleOn: element ].
	element when: TRMouseLeave do: [ :evt | self removeResizeHandleOn: element ].