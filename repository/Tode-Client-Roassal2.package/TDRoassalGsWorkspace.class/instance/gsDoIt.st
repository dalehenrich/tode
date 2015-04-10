menu items
gsDoIt
	| textMorph editor selection shell answer stonString|
	textMorph := self morph textMorph.
	editor := textMorph editor.
	editor lineSelectAndEmptyCheck: [ ^ self ].
	selection := editor selectionString.
	shell := self tdShell.
	stonString := shell evaluateSmalltalk: 'STON toString: [', selection , '] value inspect'.
	stonString ifNil: [^nil].
	answer := STON fromString: stonString.
	Transcript
		cr;
		show: answer 