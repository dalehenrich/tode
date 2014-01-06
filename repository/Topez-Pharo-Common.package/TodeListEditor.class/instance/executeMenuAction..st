accessing
executeMenuAction: aSymbol
	| action |
	action := self clientElement executeMenuAction: aSymbol listIndex: self listIndex.
	^self handleResponseActions: action 
