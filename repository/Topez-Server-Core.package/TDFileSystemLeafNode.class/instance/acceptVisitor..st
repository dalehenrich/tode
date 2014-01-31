visiting
acceptVisitor: aTDNodeVisitor
  (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode acceptVisitor: aTDNodeVisitor ]
    ifFalse: [ aTDNodeVisitor acceptFileSystemLeafNode: self ]