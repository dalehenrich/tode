response actions
executeMenuAction: actionSymbol
	| action codePresentation numArgs |
	numArgs := actionSymbol numArgs.
	codePresentation := self debugger codePresentation.
	action := numArgs == 2
		ifTrue: [ codePresentation selectLine.
			self clientElement
				executeMenuAction: actionSymbol
				selectedText: codePresentation selectedText asString ]
		ifFalse: [ self clientElement
				executeMenuAction: actionSymbol
				selectionInterval: codePresentation selectionInterval
				dirty: self debugger codePresentation hasUnacceptedEdits ].
	^ self handleResponseActions: action