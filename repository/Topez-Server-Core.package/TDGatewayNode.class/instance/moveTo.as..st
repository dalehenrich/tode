as yet unclassified
moveTo: parentNode as: newName
  "rename receiver to newName and relocate in parentNode"

  "in terms of mv/cp, the receiver is a leaf node"

  ^ parentNode moveLeafNode: self as: newName