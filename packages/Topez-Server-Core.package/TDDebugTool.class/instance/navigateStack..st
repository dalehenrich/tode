as yet unclassified
navigateStack: increment
    stackNode := tokens size = 1
        ifTrue: [ topez currentNode ]
        ifFalse: [ topez lookup: (tokens at: 2) ].
    topez setCurrentNode: self stackNode.
    self stack navigateStack: increment.
    ^ (topez commands at: 'ds') block
        value: topez
        value: self stackNode
        value: #('ds')
        value: nil