as yet unclassified
cd
  ^ tokens size = 1
    ifTrue: [ topez setCurrentNode: topez homeNode ]
    ifFalse: [ 
      | node |
      node := topez lookup: (tokens at: 2).
      node canEnter
        ifFalse: [ self error: 'Cannot cd into a leaf node: ' , (tokens at: 2) printString ].
      topez setCurrentNode: node ]