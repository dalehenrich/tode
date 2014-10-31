as yet unclassified
touch
  | leafClass destinationPath signature |
  signature := tokens at: 2.
  destinationPath := tokens at: 3.
  leafClass := TDNode concreteClassForTypeSignature: signature.
  ^ leafClass touch: signature destinationPath: destinationPath topez: topez