accessing
menuActionSpec
	"label, shortcut codepoint, actionSymbol"

	menuActionSpec ifNil: [ menuActionSpec := #() ].
	^ menuActionSpec