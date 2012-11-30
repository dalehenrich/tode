accessing
evaluate: aString
    | stream tokens line result |
    stream := aString readStream.
    [ stream atEnd ]
        whileFalse: [ 
            line := stream nextLine.
            (line notEmpty and: [ line first = $# ])
                ifFalse: [ 
                    tokens := line trimBoth findTokens: {(Character space)}.
                    tokens isEmpty
                        ifFalse: [ result := self evaluateTokens: tokens ] ] ].
    ^ result