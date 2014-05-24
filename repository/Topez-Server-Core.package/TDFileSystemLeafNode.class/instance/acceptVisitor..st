visiting
acceptVisitor: aTDNodeVisitor
  aTDNodeVisitor acceptFileSystemLeafNode: self.
  (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode acceptVisitor: aTDNodeVisitor proxiedBy: self ]