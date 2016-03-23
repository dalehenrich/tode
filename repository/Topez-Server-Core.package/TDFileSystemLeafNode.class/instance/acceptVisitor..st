visiting
acceptVisitor: aTDNodeVisitor
  aTDNodeVisitor acceptFileSystemLeafNode: self.
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      | leaf |
      [ leaf := self asTDLeafNode ]
        on: STONReaderError
        do: [ :ex | ^ self ].
      leaf acceptVisitor: aTDNodeVisitor proxiedBy: self ]