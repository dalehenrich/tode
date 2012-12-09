evaluator engine
evaluate: aString
    [ 
    | line stream result |
    stream := aString readStream.
    [ 
    line := stream nextLine.
    line ~~ nil ]
        whileTrue: [ 
            self actionStack notEmpty
                ifTrue: [ result := self accumulateText: line ]
                ifFalse: [ 
                    | isolatedCommands objIn |
                    isolatedCommands := line findTokens: ';'.
                    objIn := nil.
                    isolatedCommands
                        do: [ :isolatedCommand | 
                            | pipedCommands |
                            pipedCommands := isolatedCommand findTokens: '|'.
                            pipedCommands
                                do: [ :pipedCommand | 
                                    result := self evaluateCommand: line objIn: objIn.
                                    objIn := result ] ] ] ].
    ^ result ]
        on: Error
        do: [ :ex | 
            | errorMessage |
            errorMessage := 'Topez ERROR: ' asText
                ,
                    (Text
                        string: ex description
                        attributes:
                            {(TextColor red).
                            (TextEmphasis bold)}).
            self class debugMode
                ifTrue: [ self halt: errorMessage asString ].
            self resetStack.
            ^ errorMessage ]