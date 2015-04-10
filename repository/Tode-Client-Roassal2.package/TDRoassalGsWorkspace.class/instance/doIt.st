menu items
doIt
	| textMorph editor selection shell answer |
	textMorph := self morph textMorph.
	editor := textMorph editor.
	editor lineSelectAndEmptyCheck: [ ^ self ].
	selection := editor selectionString.
	shell := self tdShell.
	answer := shell evaluate: selection.
	Transcript
		cr;
		show: answer printString