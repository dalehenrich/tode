evaluation
readEvalPrint: aCommandString
    "Evaluate aCommandString in a separate Smalltalk process. This permits the
	user interface to remain responsive."

    (self cliShell evaluate: aCommandString)
        ifNotNil: [ :outputStringOrText | 
            | str |
            (str := outputStringOrText) isEmpty
                ifTrue: [ self markInput ]
                ifFalse: [ 
                    self
                        show: outputStringOrText;
                        cr ] ].
    self prompt