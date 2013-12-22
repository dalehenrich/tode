as yet unclassified
copyDirectoryNode: aDirectoryNode as: newName
  | childDirectory |
  childDirectory := self addChild: newName.
  aDirectoryNode
    childrenDo: [ :child | child copyTo: childDirectory as: child name ].
  ^ childDirectory