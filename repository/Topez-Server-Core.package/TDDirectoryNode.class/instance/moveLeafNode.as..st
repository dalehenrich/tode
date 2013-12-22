as yet unclassified
moveLeafNode: leafNode as: newName
  leafNode parent removeChildNode: leafNode.
  leafNode name: newName.
  ^ self addChildNode: leafNode