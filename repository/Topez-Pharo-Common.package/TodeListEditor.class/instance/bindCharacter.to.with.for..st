typing support
bindCharacter: char to: message with: selector for: clientElement
	| map asciiValue |
	asciiValue := char asciiValue.
	map := char isUppercase
		ifTrue: [ self localShiftCmdMap ]
		ifFalse: [ self localCmdMap ].
	map
		at: asciiValue + 1
		put:
			{message.
			selector} -> clientElement