menu support
executeMenuAction: actionSymbol
	| action theEditor numArgs |
	numArgs := actionSymbol numArgs.
	theEditor := self theEditor.
	action := numArgs == 2
		ifTrue: [ 
			theEditor selectLine.
			self clientElement executeMenuAction: actionSymbol selectedText: theEditor selection asString ]
		ifFalse: [ 
			self clientElement
				executeMenuAction: actionSymbol
				selectionInterval: theEditor selectionInterval
				dirty: self morph hasUnacceptedEdits ].
	^ self handleResponseActions: action