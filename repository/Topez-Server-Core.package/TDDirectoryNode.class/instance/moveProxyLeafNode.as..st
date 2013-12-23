as yet unclassified
moveProxyLeafNode: leafNode as: newName
  | childNode theLeafNode oldName |
  oldName := leafNode name.
  theLeafNode := leafNode asTDLeafNode.
  theLeafNode name: newName.
  childNode := self addChildNode: theLeafNode.
  leafNode parent removeChildNamed: oldName.
  ^ childNode