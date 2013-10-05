accessing
executeMenuAction: aSymbol
	| action |
	action := self clientElement executeMenuAction: aSymbol listIndex: self listIndex.
	action isSymbol
		ifTrue: [ ^ self perform: action ].
	action isString
		ifTrue: [ 
			| ar element |
			ar := STON fromString: action.
			element := (ar at: 2)
				topez: self topez;
				yourself.
			^ self perform: (ar at: 1) with: element ].
	^ action