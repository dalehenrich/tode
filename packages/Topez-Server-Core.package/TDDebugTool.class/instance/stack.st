as yet unclassified
stack
    | stackPath |
    stackPath := tokens size > 2
        ifTrue: [ tokens at: 3 ]
        ifFalse: [ self defaultStackPath ].
    stackNode := topez lookup: stackPath.
    ^ (topez commands at: 'ds') block
        value: topez
        value: self stackNode
        value:
            {'ds'.
            (stackNode printString)}
        value: nil