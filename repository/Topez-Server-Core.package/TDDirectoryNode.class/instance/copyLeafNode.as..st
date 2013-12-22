as yet unclassified
copyLeafNode: leafNode as: newName
  | copy |
  copy := leafNode copy.
  copy name: newName.
  ^ self addChildNode: copy