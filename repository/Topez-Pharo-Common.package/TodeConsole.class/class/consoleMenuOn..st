menu
consoleMenuOn: aBuilder
	"Specify the menu used when writing text. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'textEditorMenu'
		model: nil) menu popUpInWorld"

	<consoleMenu>
	(aBuilder item: #'Find...' translated)
		keyText: 'f';
		selector: #find.
	(aBuilder item: #'Find again' translated)
		keyText: 'g';
		selector: #findAgain.
	(aBuilder item: #'Set search string' translated)
		keyText: 'h';
		selector: #setSearchString;
		withSeparatorAfter.
	(aBuilder item: #Browse translated)
		keyText: 'b';
		selector: #browse.
	(aBuilder item: #Implementors translated)
		keyText: 'm';
		selector: #implementors.
	(aBuilder item: #Senders translated)
		keyText: 'n';
		selector: #senders;
		withSeparatorAfter.
	(aBuilder item: #Copy translated)
		keyText: 'c';
		selector: #copySelection.
	(aBuilder item: #Paste translated)
		keyText: 'v';
		selector: #pasteAtEnd.
	(aBuilder item: #'Paste...' translated) selector: #pasteRecent