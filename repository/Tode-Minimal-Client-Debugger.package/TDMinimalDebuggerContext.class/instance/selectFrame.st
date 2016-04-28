accessing
selectFrame
	self session selectedFrameIndex == self frameIndex
		ifFalse: [ self session stackClientElement stackItemSelected: frameIndex ]