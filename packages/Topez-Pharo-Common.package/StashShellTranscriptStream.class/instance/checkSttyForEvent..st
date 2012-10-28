input character filtering
checkSttyForEvent: keyboardEvent
    "Check for interrupt characters and such. Consume interrupt character and
	answer nil, otherwise answer keyboardEvent."

    (self isInterruptEvent: keyboardEvent)
        ifTrue: [ 
            self handleInterruptCharacterEvent.
            ^ nil ].
    (self isEndOfFileEvent: keyboardEvent)
        ifTrue: [ 
            self cliShell doEndOfFile.
            ^ nil ].
    (keyboardEvent keyCharacter = $j and: [ keyboardEvent commandKeyPressed ])
        ifTrue: [ 
            self show: self cliShell lastCommand.
            self readEvalPrint: self cliShell lastCommand.
            ^ nil ].
    ^ keyboardEvent