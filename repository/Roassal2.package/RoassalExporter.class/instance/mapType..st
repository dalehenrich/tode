export
mapType: aSymbol
	aSymbol == #normal ifTrue: [^ #none].
	aSymbol == #variable ifTrue: [^ #objects].
	^ aSymbol
