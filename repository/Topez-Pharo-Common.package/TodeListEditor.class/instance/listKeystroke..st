accessing
listKeystroke: event
	| action |
	event keyCharacter = Character arrowUp
		ifTrue: [ ^ self listKeystrokeUp ].
	event keyCharacter = Character arrowDown
		ifTrue: [ ^ self listKeystrokeDown ].
	event keyCharacter = Character arrowLeft
		ifTrue: [ ^ self listKeystrokeLeft ].
	event keyCharacter = Character arrowUp
		ifTrue: [ ^ self listKeystrokeUp ].
	action := self clientElement handleKeyboardEvent: event selectionIndex: self listIndex.
	^ self handleResponseActions: action