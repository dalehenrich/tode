as yet unclassified
touch
  | leafClass destinationPath |
  leafClass := TDNode concreteClassForTypeSignature: (tokens at: 2).
  destinationPath := tokens at: 3.
  ^ topez currentNode
    touch: destinationPath
    nodeClass: leafClass
    in: (topez baseNodeFor: destinationPath)