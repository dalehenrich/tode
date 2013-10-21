*topez-pharo-common
interact
	| text |
	text := UIManager default
				request: self prompt
				initialAnswer: self template.
	^ (text isNil or: [text isEmpty])
		ifTrue: [nil]
		ifFalse: [text]