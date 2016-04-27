stack
stackItemSelected: frameIndex
	| action |
	action := self stackClientElement itemSelected: frameIndex listSelections: nil.
	self handleResponseActions: action