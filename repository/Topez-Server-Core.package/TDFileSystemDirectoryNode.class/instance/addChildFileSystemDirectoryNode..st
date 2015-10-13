as yet unclassified
addChildFileSystemDirectoryNode: aTDFileSystemDirectoryNode
  "don't transfer big files this way:)"

  | parentDir childParentNode |
  parentDir := aTDFileSystemDirectoryNode containingDirectory.
  (parentDir notNil
    and: [ parentDir directoryExists: aTDFileSystemDirectoryNode name ])
    ifFalse: [ self addChild: aTDFileSystemDirectoryNode name ].
  childParentNode := self _childNodeFor: aTDFileSystemDirectoryNode name.
  aTDFileSystemDirectoryNode
    childrenDo: [ :child | child copyTo: childParentNode as: child name ].
  ^ self _childNodeFor: aTDFileSystemDirectoryNode name