as yet unclassified
cp: destinationPath in: baseNode
    | path newName destinationNode copy |
    self canMove
        ifFalse: [ self error: 'Cannot copy: ' , self printString ].
    path := destinationPath findTokens: '/'.
    newName := path last.
    path := path copyFrom: 1 to: path size - 1.
    destinationNode := baseNode lookupPath: path ifAbsent: [ ^ self error: 'Node does not exist: ' , destinationPath ].
    destinationNode canEnter
        ifFalse: [ self error: 'Cannot copy: ' , self printString , ' to: ' , destinationNode printString ].
    copy := self copy.
    copy name: newName.
    ^ destinationNode addChildNode: copy