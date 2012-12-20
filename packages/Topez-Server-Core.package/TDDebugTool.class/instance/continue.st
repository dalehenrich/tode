as yet unclassified
continue
    "db continue [stack-path]"

    | stackPath |
    stackPath := tokens size > 2
        ifTrue: [ tokens at: 3 ]
        ifFalse: [ self defaultStackPath ].
    ^ self dbContinue: nil for: stackPath