stack
stackItemSelected: frameIndex
	| action |
	action := self clientElement itemSelected: frameIndex listSelections: nil.
	self session selectedFrameIndex: frameIndex.
	self handleResponseActions: action