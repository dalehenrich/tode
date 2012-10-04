evaluator engine
evaluateCommand: line
    | tokens |
    tokens := line trimBoth findTokens: {(Character space)}.
    tokens isEmpty
        ifTrue: [ ^ '' ].
    [ 
    | commandBlock |
    commandBlock := Commands at: (tokens at: 1) ifAbsent: [ ^ 'unknown command' asText allBold ].
    ^ Text
        string: (commandBlock value: self value: self topezClient value: tokens) asString
        attribute: (TextColor color: Color blue) ]
        on: TZTopezNotification
        do: [ :ex | 
            self exception: ex exceptionProxy.
            ex resume ]