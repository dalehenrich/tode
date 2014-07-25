*topez-pharo-common
interact
	| text |
	self isHeadless
		ifTrue: [ ^ self interactHeadless ].
	text := self requestPassword
		ifTrue: [ UIManager default requestPassword: self prompt ]
		ifFalse: [ UIManager default request: self prompt initialAnswer: self template ].
	^ (text isNil or: [ text isEmpty ])
		ifTrue: [ nil ]
		ifFalse: [ text ]