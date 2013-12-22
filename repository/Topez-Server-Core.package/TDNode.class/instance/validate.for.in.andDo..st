as yet unclassified
validate: cpOrMv for: destinationPath in: baseNode andDo: aBlock
  | messageName path newName destinationNode destinationDirectoryNode destinationIsDirectory |
  messageName := cpOrMv == #'mv'
    ifTrue: [ 'move' ]
    ifFalse: [ 
      "assume #cp"
      'copy' ].
  self canMove
    ifFalse: [ self error: 'Cannot ' , messageName , ': ' , self printString ].
  path := destinationPath findTokens: '/'.
  newName := path last.
  destinationNode := baseNode lookupPath: path ifAbsent: [  ].
  destinationIsDirectory := false.
  destinationNode
    ifNotNil: [ 
      destinationNode isLeaf
        ifFalse: [ destinationIsDirectory := true ] ].
  destinationIsDirectory
    ifTrue: [ 
      newName := self name.
      destinationDirectoryNode := destinationNode ]
    ifFalse: [ 
      path := path copyFrom: 1 to: path size - 1.
      destinationDirectoryNode := baseNode
        lookupPath: path
        ifAbsent: [ ^ self error: 'Node does not exist: ' , destinationPath ] ].
  destinationDirectoryNode canEnter
    ifFalse: [ 
      ^ self
        error:
          'Cannot ' , messageName , ': ' , self printString , ' to: '
            , destinationDirectoryNode printString ].
  (destinationIsDirectory and: [ self isLeaf not ])
    ifTrue: [ 
      destinationDirectoryNode printString = self printString
        ifTrue: [ self error: 'Attempting to ' , messageName , ' onto self' ] ]
    ifFalse: [ 
      (destinationDirectoryNode printString = self parent printString
        and: [ newName = self name ])
        ifTrue: [ self error: 'Attempting to ' , messageName , ' onto self' ] ].
  ^ aBlock value: destinationDirectoryNode value: newName