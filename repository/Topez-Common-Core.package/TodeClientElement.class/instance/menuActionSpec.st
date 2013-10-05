accessing
menuActionSpec
	"label, shortcut character, actionSymbol"

	menuActionSpec ifNil: [ menuActionSpec := #() ].
	^ menuActionSpec