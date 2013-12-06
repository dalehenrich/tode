as yet unclassified
asTDLeafNode
  | node |
  node := STON fromString: self fileContents.
  node parent: self parent.
  ^ node