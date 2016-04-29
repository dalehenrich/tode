callbacks
actOnInsertAfterSelection: ann

	UIManager default defer: [ 
		textMorph textArea editor afterSelectionInsertAndSelect: ann insertion ]
