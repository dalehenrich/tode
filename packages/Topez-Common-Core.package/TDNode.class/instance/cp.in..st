as yet unclassified
cp: destinationPath in: baseNode
    | path newName destinationNode copy |
    self canMove
        ifFalse: [ self error: 'Cannot copy: ' , self printString ].
    path := destinationPath findTokens: '/'.
    destinationNode := baseNode lookupPath: path ifAbsent: [  ].
    destinationNode == nil
        ifTrue: [ 
            "last element doesn't exist ... newName of copy?"
            newName := path last.
            path := path copyFrom: 1 to: path size - 1.
            destinationNode := baseNode
                lookupPath: path
                ifAbsent: [ ^ self error: 'Node does not exist: ' , destinationPath ] ]
        ifFalse: [ 
            "copy to existing element"
            destinationNode isLeaf
                ifTrue: [ 
                    "replace leaf"
                    newName := path last.
                    path := path copyFrom: 1 to: path size - 1.
                    destinationNode := baseNode
                        lookupPath: path
                        ifAbsent: [ ^ self error: 'Node does not exist: ' , destinationPath ] ]
                ifFalse: [ 
                    "copy child using my name"
                    newName := self name ] ].
    destinationNode canEnter
        ifFalse: [ ^ self error: 'Cannot copy: ' , self printString , ' to: ' , destinationNode printString ].
    destinationNode name = self parent name
        ifTrue: [ 
            self
                error:
                    'Source node: ' self parent name printString , ' and destination node: ' , destinationNode name , ' are the same.' ].
    copy := self copy.
    copy name: newName.
    ^ destinationNode addChildNode: copy