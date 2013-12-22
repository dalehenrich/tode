as yet unclassified
mv: destinationPath in: baseNode
  | path newName destinationNode |
  self canMove
    ifFalse: [ self error: 'Cannot move: ' , self printString ].
  path := destinationPath findTokens: '/'.
  newName := self name.
  destinationNode := baseNode lookupPath: path ifAbsent: [  ].
  destinationNode == nil
    ifTrue: [ 
      "make sure parent exists and then move using my name"
      newName := path last.
      path := path copyFrom: 1 to: path size - 1.
      destinationNode := baseNode
        lookupPath: path
        ifAbsent: [ ^ self error: 'Node does not exist: ' , destinationPath ] ]
    ifFalse: [ 
      "move to existing element"
      destinationNode isLeaf
        ifTrue: [ 
          "replace leaf"
          newName := path last.
          path := path copyFrom: 1 to: path size - 1.
          destinationNode := baseNode
            lookupPath: path
            ifAbsent: [ ^ self error: 'Node does not exist: ' , destinationPath ] ]
        ifFalse: [ 
          "move child using my name"
          newName := self name ] ].
  destinationNode canEnter
    ifFalse: [ 
      self
        error:
          'Cannot move: ' , self printString , ' to: ' , destinationNode printString ].
  (destinationNode printString = self parent printString
    and: [ newName = self name ])
    ifTrue: [ self error: 'Attempting to move onto self' ].
  self parent removeChildNode: self.
  self name: newName.
  destinationNode addChildNode: self