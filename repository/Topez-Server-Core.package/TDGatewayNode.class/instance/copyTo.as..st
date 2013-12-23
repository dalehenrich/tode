as yet unclassified
copyTo: destinationNode as: newName
  "in terms of mv/cp, the receiver is a leaf node"

  ^ destinationNode copyLeafNode: self as: newName