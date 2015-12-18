font
testFont
	| v shape es firstShape |
	v := RTView new.

	shape := RTLabel new 
		fontName: [ :i | FontChooser new fontListStrings at: i ]; 
		text: 'The quick brown fox jumps over the lazy dog'.

	es := shape elementsOn: (1 to: FontChooser new fontListStrings size).
	es @ RTPopup.

	v addAll: es.
	RTVerticalLineLayout on: v elements.

	firstShape := v canvas shapes first.
	self assert: firstShape fontName equals: FontChooser new fontListStrings first.