hooks
initializeElement: element
	element when: TRMouseDoubleClick do: [ :evt |
		| canvas |
		canvas := element view canvas.
		animation 
			ifTrue: [ RTFocusAnimation on: element ]
			ifFalse: [ 
				canvas camera focusOnCenterScaled: canvas extent "rec: element encompassingRectangle".
				evt signalUpdate ] ]. 