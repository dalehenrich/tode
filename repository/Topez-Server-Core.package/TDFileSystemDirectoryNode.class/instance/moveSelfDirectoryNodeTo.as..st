as yet unclassified
moveSelfDirectoryNodeTo: aDirectoryNode as: newName
  | childDirectory |
  childDirectory := aDirectoryNode copyDirectoryNode: self as: newName.
  self parent removeChildNode: self.
  ^ childDirectory