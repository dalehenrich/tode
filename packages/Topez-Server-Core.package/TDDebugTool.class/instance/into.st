as yet unclassified
into
    "db into [stack-path]"

    | stackPath |
    stackPath := tokens size > 2
        ifTrue: [ tokens at: 3 ]
        ifFalse: [ self defaultStackPath ].
    self dbStep: #'into' for: stackPath.
    ^ self dbFinishStep: stackPath