frames
numberOfAllFrames
	^ 1 + (childrenFrame inject: 0 into: [ :sum :frame | sum + frame numberOfAllFrames ])