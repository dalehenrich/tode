accessing
executeMenuAction: aSymbol
	| action |
	action := self clientElement executeMenuAction: aSymbol.
	^self handleResponseActions: action 
