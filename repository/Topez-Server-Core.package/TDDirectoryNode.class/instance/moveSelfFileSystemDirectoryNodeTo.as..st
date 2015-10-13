as yet unclassified
moveSelfFileSystemDirectoryNodeTo: aFileSystemDirectoryNode as: newName
  | childDirectory |
  childDirectory := aFileSystemDirectoryNode copyDirectoryNode: self as: newName.
  self parent removeChildNode: self.
  ^ childDirectory