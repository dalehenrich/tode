parsing
tokenize: aString
	| lines |
	lines := RTTextLines new.
	aString
		lineIndicesDo: [ :startLine :endLine :endLineWithEOL | 
			| line lineString wordStrings startWord endWord |
			lineString := aString copyFrom: startLine to: endLine.
			line := RTTextLine new.
			wordStrings := self tokenizeLine: lineString.
			startWord := 0.
			wordStrings
				do: [ :wordString | 
					| normalizedString interval |
					endWord := startWord + wordString size.
					normalizedString := self normalizeString: wordString.
					interval := startLine + startWord to: startLine + endWord - 1.
					line
						add:
							(RTTextWord new
								text: normalizedString;
								interval: interval;
								yourself).
					startWord := endWord ].
			lines add: line ].
	^ lines