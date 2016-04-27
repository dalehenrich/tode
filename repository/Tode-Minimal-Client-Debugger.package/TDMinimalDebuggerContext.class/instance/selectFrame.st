accessing
selectFrame
	self session selectedFrameIndex == self frameIndex
		ifFalse: [ self session stackItemSelected: frameIndex ]