evaluator engine
evaluateCommand: line
    | tokens |
    tokens := line trimBoth findTokens: {(Character space)}.
    [ 
    | result |
    result := (Commands at: (tokens at: 1)) value: self value: self topezClient value: tokens.
    ^ Text string: result asString emphasis: TextEmphasis italic ]
        on: TZTopezNotification
        do: [ :ex | 
            self exception: ex exceptionProxy.
            ex resume ]