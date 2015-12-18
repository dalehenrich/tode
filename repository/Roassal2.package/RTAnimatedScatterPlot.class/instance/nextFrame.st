public - frames
nextFrame
	frame := (frame + 1) min: self numberOfTables.
	self renderFrame: frame
	