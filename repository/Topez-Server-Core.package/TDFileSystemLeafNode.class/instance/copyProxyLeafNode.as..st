accessing
copyProxyLeafNode: leafNode as: newName
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode copyProxyLeafNode: leafNode as: newName ]
        on: STONReaderError
        do: [ :ex | super copyProxyLeafNode: leafNode as: newName ] ]
    ifFalse: [ super copyProxyLeafNode: leafNode as: newName ]