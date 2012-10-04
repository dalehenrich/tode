evaluator engine
evaluateCommand: line
    | tokens |
    tokens := line trimBoth findTokens: {(Character space)}.
    tokens isEmpty
        ifTrue: [ ^ '' ].
    [ 
    | commandBlock |
    commandBlock := Commands at: (tokens at: 1) ifAbsent: [ ^ 'unknown command' asText allBold ].
    ^ (commandBlock value: self value: self topezClient value: tokens) renderText ]
        on: TZTopezNotification
        do: [ :ex | 
            self exception: ex exceptionProxy.
            ex resume ]