as yet unclassified
asTDLeafNode
  ^ (STON fromUTF8EncodedString: self fileContents)
    parent: self parent;
    topez: self topez;
    yourself