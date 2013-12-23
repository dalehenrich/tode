as yet unclassified
copyLeafNode: leafNode as: newName
  | copy theLeafNode |
  theLeafNode := leafNode asTDLeafNode.
  copy := theLeafNode copy.
  copy name: newName.
  ^ self addChildNode: copy