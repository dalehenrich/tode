menu
roassalGsWorkspaceEditorMenuOn: aBuilder
	"Specify the menu used when writing code. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: #roassalGsWorkspaceMenu
		model: nil) menu popUpInWorld
	"

	<roassalGsWorkspaceMenu>
	(aBuilder item: #'Gs Do it' translated)
		keyText: 'd';
		selector: #gsDoIt;
		icon: Smalltalk ui icons smallDoItIcon.
	(aBuilder item: #Copy translated)
		keyText: 'c';
		selector: #copySelection;
		icon: Smalltalk ui icons smallCopyIcon.
	(aBuilder item: #Cut translated)
		keyText: 'x';
		selector: #cut;
		icon: Smalltalk ui icons smallCutIcon.
	(aBuilder item: #Paste translated)
		keyText: 'v';
		selector: #paste;
		icon: Smalltalk ui icons smallPasteIcon.
	(aBuilder item: #'Paste...' translated)
		selector: #pasteRecent;
		icon: Smalltalk ui icons smallCopyIcon;
		withSeparatorAfter