evaluator engine
evaluateCommand: line
    | tokens |
    tokens := line trimBoth findTokens: {(Character space)}.
    tokens isEmpty
        ifTrue: [ ^ '' ].
    [ 
    | result |
    result := (Commands at: (tokens at: 1) ifAbsent: [ ^ 'unknown command' asText allBold ])
        value: self
        value: self topezClient
        value: tokens.
    ^ Text string: result asString attribute: TextEmphasis italic ]
        on: TZTopezNotification
        do: [ :ex | 
            self exception: ex exceptionProxy.
            ex resume ]