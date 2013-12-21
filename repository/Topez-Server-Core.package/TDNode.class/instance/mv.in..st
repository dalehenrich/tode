as yet unclassified
mv: destinationPath in: baseNode
  | path newName destinationNode oldName |
  self canMove
    ifFalse: [ self error: 'Cannot move: ' , self printString ].
  path := destinationPath findTokens: '/'.
  newName := self name.
  destinationNode := baseNode
    lookupPath: path
    ifAbsent: [ 
      newName := path last.
      path := path copyFrom: 1 to: path size - 1.
      destinationNode := baseNode
        lookupPath: path
        ifAbsent: [ ^ self error: 'Node does not exist: ' , destinationPath ] ].
  destinationNode canEnter
    ifFalse: [ 
      self
        error:
          'Cannot move: ' , self printString , ' to: ' , destinationNode printString ].
  oldName := self name.
  self name: newName.
  destinationNode addChildNode: self.
  self parent removeChildNamed: oldName