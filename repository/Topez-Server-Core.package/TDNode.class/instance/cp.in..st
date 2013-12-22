as yet unclassified
cp: destinationPath in: baseNode
  | path newName destinationNode destinationDirectoryNode destinationIsDirectory |
  self canMove
    ifFalse: [ self error: 'Cannot copy: ' , self printString ].
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
          'Cannot copy: ' , self printString , ' to: '
            , destinationDirectoryNode printString ].
  (destinationIsDirectory and: [ self isLeaf not ])
    ifTrue: [ 
      destinationDirectoryNode printString = self printString
        ifTrue: [ self error: 'Attempting to copy onto self' ] ]
    ifFalse: [ 
      (destinationDirectoryNode printString = self parent printString
        and: [ newName = self name ])
        ifTrue: [ self error: 'Attempting to copy onto self' ] ].
  ^ self copyTo: destinationDirectoryNode as: newName