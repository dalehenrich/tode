menu commands
insertAfterSelection: aString
	| oldEditor |

	oldEditor := textMorph editor.
		selectionInterval := oldEditor selectionInterval.
		textMorph installEditorToReplace: oldEditor.
		textMorph handleEdit: [oldEditor afterSelectionInsertAndSelect: aString].
		selectionInterval := oldEditor selectionInterval.
	
		textMorph editor selectFrom: selectionInterval first to: selectionInterval last.
		self scrollSelectionIntoView