accessing
listIndex: anInteger
	| action |
	self setListIndex: anInteger.
	action := self clientElement itemSelected: anInteger listSelections: listSelections.
	^ self handleResponseActions: action