as yet unclassified
over
    "db over [stack-path]"

    | stackPath |
    stackPath := tokens size > 2
        ifTrue: [ tokens at: 3 ]
        ifFalse: [ self defaultHomeStackPath ].
    self dbStep: #'over' for: stackPath.
    stackNode := topez lookup: stackPath.
    ^ self dbFinishStep: stackPath