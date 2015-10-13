as yet unclassified
touch: destinationPath node: aNode in: baseNode
  | path destinationNode |
  path := destinationPath findTokens: '/'.
  path := path copyFrom: 1 to: path size - 1.
  destinationNode := baseNode
    lookupPath: path
    ifAbsent: [ ^ self error: 'Node does not exist: ' , destinationPath ].
  destinationNode canEnter
    ifFalse: [ self error: 'Cannot touch: ' , destinationNode printString ].
  ^ destinationNode addChildNode: aNode