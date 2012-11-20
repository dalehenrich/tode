as yet unclassified
cd
    ^ tokens size = 1
        ifTrue: [ topez setCurrentNode: (topez lookup: '/home') ]
        ifFalse: [ 
            | node |
            node := topez lookup: (tokens at: 2).
            node canEnter
                ifFalse: [ self error: 'Cannot cd into node: ' , (tokens at: 2) printString ].
            topez setCurrentNode: node ]