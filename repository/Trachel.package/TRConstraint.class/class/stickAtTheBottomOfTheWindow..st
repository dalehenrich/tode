public - sticking
stickAtTheBottomOfTheWindow: trachelShape
	self moveAtTheBottomOfTheWindow: trachelShape.
	trachelShape canvas
		when: TRResizeCanvasEvent
		do: [ :event | self moveAtTheBottomOfTheWindow: trachelShape ]