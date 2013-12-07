as yet unclassified
asTDLeafNode
  ^ (STON fromString: self fileContents)
    parent: self parent;
    topez: self topez;
    yourself