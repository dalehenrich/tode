window color
windowColorSpecification
	"Answer a WindowColorSpec object that declares my preference"

	| windowColorSpec |
	windowColorSpec := Smalltalk
				at: #WindowColorSpec
				ifAbsent: [^ self error: 'this image does not support WindowColorSpec'].
	^ windowColorSpec
		classSymbol: self name
		wording: 'Squeak Shell'
		brightColor: (Color lightGray lighter paler)
		pastelColor: (Color lightGray lighter lighter paler paler)
		helpMessage: 'CommandShell window for evaluating Smalltalk and OS commands'