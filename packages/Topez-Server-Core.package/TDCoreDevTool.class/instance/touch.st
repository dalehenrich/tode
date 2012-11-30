as yet unclassified
touch
    | leafClass destinationPath |
    leafClass := TDLeafNode concreteClassForTypeSignature: (tokens at: 2).
    destinationPath := tokens at: 3.
    ^ topez currentNode touch: destinationPath leafClass: leafClass in: (topez baseNodeFor: destinationPath)