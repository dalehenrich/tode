stack
stackItemSelected: frameIndex
	| action |
	action := self stackClientElement itemSelected: frameIndex listSelections: nil.
	self selectedFrameIndex: frameIndex.
	self handleResponseActions: action