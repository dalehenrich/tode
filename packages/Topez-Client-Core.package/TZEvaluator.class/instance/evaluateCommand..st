evaluator engine
evaluateCommand: line
    [ 
    | tokens |
    (line notEmpty and: [ line first = $# ])
        ifTrue: [ ^ '' ].
    tokens := line trimBoth findTokens: {(Character space)}.
    tokens isEmpty
        ifTrue: [ ^ '' ].
    [ 
    | commandBlock |
    commandBlock := self class commands
        at: (tokens at: 1)
        ifAbsent: [ 
            | errorMessage |
            errorMessage := 'unknown command: ' , (tokens at: 1).
            self class debugMode
                ifTrue: [ self halt: errorMessage asString ].
            ^ errorMessage asText allBold ].
    ^ (self topez recordHistory: (commandBlock value: self value: self topez value: tokens)) renderText ]
        on: TZTopezNotification
        do: [ :ex | 
            self class enableDebugger
                ifTrue: [ ex pass ]
                ifFalse: [ self exception: ex exceptionProxy ].
            ex resume ] ]
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
            ^ errorMessage ]