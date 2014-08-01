initialize-release
openAsMorphLabel: labelString welcome: welcome
	"Build a morph viewing this stream"

	| window |
	window := (TZSystemWindow labelled: labelString) model: self.
	textMorph := (self consoleWindowMorphClass
		on: self
		text: nil
		accept: nil
		readSelection: nil
		menu: #consoleMenu:shifted:)
		disallowKeyMapping;
		yourself.
	textMorph acceptOnCR: true.
	window addMorph: textMorph frame: (0 @ 0 corner: 1 @ 1).
	welcome
		ifTrue: [ self show: self welcomeMessage ].
	self prompt.
	^ window
		openInWorld;
		bounds: (self cliShell topezClientClass bounds at: #evaluator);
		yourself