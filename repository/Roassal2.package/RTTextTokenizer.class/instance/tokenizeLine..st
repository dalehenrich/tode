parsing
tokenizeLine: lineString
	^ lineString findTokens: self wordSeparators keep: self wordSeparators