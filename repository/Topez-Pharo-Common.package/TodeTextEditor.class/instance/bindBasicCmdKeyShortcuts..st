typing support
bindBasicCmdKeyShortcuts: map
	| mod |
	mod := self model.
	map
		at: 1 + 1 "home key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#cursorHome:} -> mod;
		at: 4 + 1 "end key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#cursorEnd:} -> mod;
		at: 8 + 1 "ctrl-H or delete key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#backspace:} -> mod;
		at: 11 + 1 "page up key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#cursorPageUp:} -> mod;
		at: 12 + 1 "page down key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#cursorPageDown:} -> mod;
		at: 27 + 1 "escape key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#escape:} -> mod;
		at: 28 + 1 "left arrow key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#cursorLeft:} -> mod;
		at: 29 + 1 "right arrow key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#cursorRight:} -> mod;
		at: 30 + 1 "up arrow key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#cursorUp:} -> mod;
		at: 31 + 1 "downd arrow key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#cursorDown:} -> mod;
		at: 115 + 1 "CMD-s"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#accept:} -> mod;
		at: 127 + 1 "del key"
			put:
				{#executeLocalMenuAction:keyboardEvent:.
					#forwardDelete:} -> mod;
		yourself.
	#($a #selectAll: $c #copySelection: $e #exchange: $f #find: $g #findAgain: $h #setSearchString: $j #redo: $v #paste: $w #backWord: $x #cut: $y #swapChars: $z #undo:)
		pairsDo: [ :char :symbol | 
			map
				at: char asciiValue + 1
				put:
					{#executeLocalMenuAction:keyboardEvent:.
					symbol} -> mod ]