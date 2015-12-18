resizing
testResizing

	| t |
	t := false.
	canvas when: TRResizeCanvasEvent do: [ :evt | t := true ].
	canvas extent:  12 @ 12.
	self assert: t