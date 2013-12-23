as yet unclassified
copyProxyLeafNode: leafNode as: newName
  | copy theLeafNode |
  theLeafNode := leafNode asTDLeafNode.
  copy := theLeafNode copy.
  copy name: newName.
  ^ self addChildNode: copy