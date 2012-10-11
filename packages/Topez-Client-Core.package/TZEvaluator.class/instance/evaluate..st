evaluator engine
evaluate: aString
    [ 
    | line stream result |
    stream := aString readStream.
    [ 
    line := stream nextLine.
    line ~~ nil ]
        whileTrue: [ 
            result := self collectText
                ifTrue: [ self accumulateText: line ]
                ifFalse: [ self evaluateCommand: line ] ].
    ^ result ]
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