menu
roassalGsWorkspaceEditorMenuOn: aBuilder
	"Specify the menu used when writing code. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: #roassalGsWorkspaceMenu
		model: nil) menu popUpInWorld
	"

	<roassalGsWorkspaceMenu>
	(aBuilder item: #'Do it' translated)
		keyText: 'd';
		selector: #doIt;
		icon: Smalltalk ui icons smallDoItIcon.
	(aBuilder item: #'Print it' translated)
		keyText: 'p';
		selector: #printIt;
		icon: Smalltalk ui icons smallPrintItIcon.
	(aBuilder item: #'Inspect it' translated)
		keyText: 'i';
		selector: #inspectIt;
		icon: Smalltalk ui icons smallInspectItIcon.
	(aBuilder item: #'Debug it' translated)
		keyText: 'D';
		selector: #debugIt;
		icon: Smalltalk ui icons smallDebugIcon.
	(aBuilder item: #'Find...' translated)
		keyText: 'f';
		selector: #find;
		icon: Smalltalk ui icons smallFindIcon.
	(aBuilder item: #'Find again' translated)
		keyText: 'g';
		selector: #findAgain;
		icon: Smalltalk ui icons smallFindIcon.
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