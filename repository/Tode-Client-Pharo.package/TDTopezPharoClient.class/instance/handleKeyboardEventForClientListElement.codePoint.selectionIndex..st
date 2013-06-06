as yet unclassified
handleKeyboardEventForClientListElement: aClientElement codePoint: codePoint selectionIndex: selectionIndex
	^ aClientElement keyboardEventBlock
		value: true
		value: codePoint
		value: aClientElement
		value: selectionIndex