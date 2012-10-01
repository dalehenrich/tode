evaluating
evaluateCommand: line
    | tokens |
    tokens := line trimBoth findTokens: {(Character space)}.
    [ ^ (Commands at: (tokens at: 1)) value: self value: self topezClient value: tokens ]
        on: TZTopezNotification
        do: [ :ex | 
            self exception: ex exceptionProxy.
            ex resume ]