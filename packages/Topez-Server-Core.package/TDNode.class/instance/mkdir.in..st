as yet unclassified
mkdir: destinationPath in: baseNode
    | path newName destinationNode |
    path := destinationPath findTokens: '/'.
    newName := path last.
    path := path copyFrom: 1 to: path size - 1.
    destinationNode := baseNode lookupPath: path ifAbsent: [ ^ self error: 'Node does not exist: ' , destinationPath ].
    destinationNode canEnter
        ifFalse: [ self error: 'Cannot mkdir: ' , destinationNode printString ].
    ^ destinationNode addChild: newName