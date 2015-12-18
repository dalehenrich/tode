initialization
initialize
	rootFrame := self createNewFrame.
	currentFrame := rootFrame.
	super initialize.
	self resetLayoutBuilder.
	edgeBuilder := RTEdgeBuilder new