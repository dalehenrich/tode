sources
exampleFontSize

	| v label els |
	v := RTView new.
	label := RTLabel new height: #yourself.
	els := label elementsOn: (1 to: 30).
	v addAll: els.
	RTFlowLayout on: els.

	^ v