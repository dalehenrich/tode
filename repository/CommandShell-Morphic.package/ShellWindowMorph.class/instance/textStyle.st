model access
textStyle
	"A fixed width font for the text morph"

	^ (TextStyle named: 'DefaultFixedTextStyle')
		ifNil: [TextStyle default]