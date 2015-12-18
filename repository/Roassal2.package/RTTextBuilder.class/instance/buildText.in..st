protocol
buildText: aString in: element
	| tokenizedString elements lines |
	tokenizedString := textTokenizer tokenize: aString.
	lines := RTGroup new.
	elements := RTGroup new.
	tokenizedString linesDo: [ :eachLine | 
		| line |
		line := RTGroup new.
		eachLine wordsDo: [ :eachWord | | wordElement |
			wordElement := RTElement on: eachWord text.
			wordHook cull: wordElement cull: eachWord interval.
			wordShapeBuilder setUpElements: wordElement.
			wordInteractionBuilder setUpElements: wordElement.
			line add: wordElement.
			elements add: wordElement.
			view add: wordElement ].
		RTHorizontalLineLayout new gapSize: 0; on: line.
		lines add: line ].
	RTVerticalLineLayout new gapSize: 0; on: lines.
	RTNest new padding: padding; on: element nest: elements.
	element attributeAt: self nestedElementsAttribute put: elements.
	^ elements