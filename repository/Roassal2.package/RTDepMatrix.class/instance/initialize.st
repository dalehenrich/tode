initialization
initialize
	super initialize.
	function := [ :x :y | x = y ].
	view @ RTDraggableView