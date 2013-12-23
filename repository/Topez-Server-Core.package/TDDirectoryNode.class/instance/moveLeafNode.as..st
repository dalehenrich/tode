as yet unclassified
moveLeafNode: leafNode as: newName
  | theLeafNode |
  leafNode parent removeChildNode: leafNode.
  theLeafNode := leafNode copy.
  theLeafNode name: newName.
  ^ self addChildNode: theLeafNode