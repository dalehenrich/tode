as yet unclassified
calculateSourceRangeEnd: start in: string
    | scan i char stack beginners enders |
    (string at: i) = $^
        ifTrue: [ ^ string size - 1 ].
    (char := string at: i) isCompilerSpecial
        ifTrue: [ 
            ^ (i < string size and: [ (char := string at: i + 1) isCompilerSpecial ])
                ifTrue: [ i + 1 ]
                ifFalse: [ i ] ].
    scan := true.
    [ scan ]
        whileTrue: [ 
            [ i <= string size and: [ (string at: i) isSeparator ] ] whileTrue: [ i := i + 1 ].
            [ i <= string size and: [ (char := string at: i) isAlphaNumeric or: [ char = $_ ] ] ]
                whileTrue: [ i := i + 1 ].
            char = $:
                ifFalse: [ ^ i - 1 ].
            scan := start == 1.
            scan
                ifTrue: [ i := i + 1 ] ].
    stack := OrderedCollection new.
    beginners := String
        with: $'
        with: $"
        with: $(
        with: $[.
    enders := String with: $) with: $].
    [ 
    i := i + 1.
    i < string size ]
        whileTrue: [ 
            char := string at: i.
            stack isEmpty
                ifTrue: [ 
                    (char = $. or: [ char = $; ])
                        ifTrue: [ ^ i - 1 ].
                    (beginners includes: char)
                        ifTrue: [ stack addLast: char ]
                        ifFalse: [ 
                            (enders includes: char)
                                ifTrue: [ ^ i - 1 ] ] ]
                ifFalse: [ 
                    (stack last = $' or: [ stack last = $" ])
                        ifTrue: [ 
                            char = stack last
                                ifTrue: [ stack removeLast ] ]
                        ifFalse: [ 
                            (beginners includes: char)
                                ifTrue: [ stack addLast: char ]
                                ifFalse: [ 
                                    (stack last = $( and: [ char = $) ])
                                        ifTrue: [ stack removeLast ]
                                        ifFalse: [ 
                                            (stack last = $[ and: [ char = $] ])
                                                ifTrue: [ stack removeLast ] ] ] ] ] ].
    ^ i - 1