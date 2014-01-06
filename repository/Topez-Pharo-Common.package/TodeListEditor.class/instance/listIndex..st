accessing
listIndex: anInteger
	| action |
	self setListIndex: anInteger.
	action := self clientElement itemSelected: anInteger.
	^self handleResponseActions: action 
