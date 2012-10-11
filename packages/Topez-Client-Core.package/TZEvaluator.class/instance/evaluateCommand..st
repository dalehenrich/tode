evaluator engine
evaluateCommand: line
    [ 
    | tokens |
    tokens := line trimBoth findTokens: {(Character space)}.
    tokens isEmpty
        ifTrue: [ ^ '' ].
    [ 
    | commandBlock |
    commandBlock := self class commands at: (tokens at: 1) ifAbsent: [ ^ 'unknown command' asText allBold ].
    ^ (self topez recordHistory: (commandBlock value: self value: self topez value: tokens)) renderText ]
        on: TZTopezNotification
        do: [ :ex | 
            self exception: ex exceptionProxy.
            ex resume ] ]
        on: Error
        do: [ :ex | 
            self halt.
            ^ 'Topez ERROR: ' asText
                ,
                    (Text
                        string: ex description
                        attributes:
                            {(TextColor red).
                            (TextEmphasis bold)}) ]