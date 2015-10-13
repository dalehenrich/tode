as yet unclassified
asTDLeafNode
  ^ (self objectSerializer fromString: self fileContents)
    parent: self parent;
    topez: self topez;
    yourself