accessing
moveProxyLeafNode: leafNode as: newName
  (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode moveProxyLeafNode: leafNode as: newName ]
    ifFalse: [ super moveProxyLeafNode: leafNode as: newName ]