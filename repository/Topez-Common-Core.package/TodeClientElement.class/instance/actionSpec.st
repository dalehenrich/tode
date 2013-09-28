accessing
actionSpec
	"label, shortcut codepoint, actionSymbol"

	actionSpec ifNil: [ actionSpec := #() ].
	^ actionSpec