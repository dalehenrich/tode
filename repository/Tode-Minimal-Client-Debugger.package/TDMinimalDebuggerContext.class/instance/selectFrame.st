accessing
selectFrame
	| action |
	action := self session stackClientElement itemSelected: frameIndex listSelections: nil.
	self handleResponseActions: action