updating
update: event

	event == #prompt	"display $PS1"
		ifTrue: [^ self prompt].
	event == #alternatePrompt	"display $PS2"
		ifTrue: [^ self promptTwo].
	event == #restorePrompt	"restore last prompt display"
		ifTrue: [^ self prompt].
	event == #exit
		ifTrue: [^ self close].
	event == #clearText
		ifTrue: [^ self clear].
	event == #interruptCharacter
		ifTrue: [^ self handleInterruptCharacterEvent].
	event == #relabel
		ifTrue: [^ self changed: event].
	self error: ['unexpected event']