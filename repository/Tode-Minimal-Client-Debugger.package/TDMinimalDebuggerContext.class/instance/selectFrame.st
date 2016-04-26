accessing
selectFrame
	self session selectedFrameIndex == self frameIndex
		ifFalse: [ | action |
			action := self session stackClientElement itemSelected: frameIndex listSelections: nil.
			self handleResponseActions: action ]