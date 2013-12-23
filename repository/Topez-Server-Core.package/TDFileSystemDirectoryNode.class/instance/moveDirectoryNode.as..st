as yet unclassified
moveDirectoryNode: aDirectoryNode as: newName
  | childDirectory |
  childDirectory := self copyDirectoryNode: aDirectoryNode as: newName.
  aDirectoryNode parent removeChildNode: aDirectoryNode.
  ^ childDirectory