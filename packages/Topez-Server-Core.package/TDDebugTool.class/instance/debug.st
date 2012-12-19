as yet unclassified
debug
    | stack stackPath debugNode |
    debugNode := self topez lookup: '.ex/debug'.
    stackPath := tokens size > 1
        ifTrue: [ tokens at: 2 ]
        ifFalse: [ self defaultStackPath ].
    stackNode := debugNode cp: stackPath in: (topez baseNodeFor: stackPath).
    topez setCurrentNode: stackNode.
    ^ (topez commands at: 'ds') block
        value: topez
        value: stackNode
        value:
            {'ds'.
            (stackNode printString)}
        value: nil