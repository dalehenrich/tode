method source
calculateSourceRangeEnd: start in: string
    | scan i char characterStack beginners enders |
    i := start.
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
    characterStack := OrderedCollection new.
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
            characterStack isEmpty
                ifTrue: [ 
                    (char = $. or: [ char = $; ])
                        ifTrue: [ ^ i - 1 ].
                    (beginners includes: char)
                        ifTrue: [ characterStack addLast: char ]
                        ifFalse: [ 
                            (enders includes: char)
                                ifTrue: [ ^ i - 1 ] ] ]
                ifFalse: [ 
                    (characterStack last = $' or: [ characterStack last = $" ])
                        ifTrue: [ 
                            char = characterStack last
                                ifTrue: [ characterStack removeLast ] ]
                        ifFalse: [ 
                            (beginners includes: char)
                                ifTrue: [ characterStack addLast: char ]
                                ifFalse: [ 
                                    (characterStack last = $( and: [ char = $) ])
                                        ifTrue: [ characterStack removeLast ]
                                        ifFalse: [ 
                                            (characterStack last = $[ and: [ char = $] ])
                                                ifTrue: [ characterStack removeLast ] ] ] ] ] ].
    ^ i - 1