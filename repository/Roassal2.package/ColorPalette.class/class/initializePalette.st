default
initializePalette

	palette := self rawPalette asDictionary.
	palette keysDo: [ :k |  |v|
			v := palette at: k.
			palette at: k put: v asDictionary.
		 ]