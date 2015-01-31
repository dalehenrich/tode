accessing
listIndex: anInteger
	"raw access to listSelections to avoid unwanted lazy initialization.
	 listSelections is non-nil only when multiple selection is in effect."

	| action |
	self setListIndex: anInteger.
	action := self clientElement itemSelected: anInteger listSelections: listSelections.
	^ self handleResponseActions: action