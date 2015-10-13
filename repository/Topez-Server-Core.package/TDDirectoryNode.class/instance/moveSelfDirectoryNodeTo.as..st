as yet unclassified
moveSelfDirectoryNodeTo: aDirectoryNode as: newName
  self parent removeChildNode: self.
  self name: newName.
  ^ aDirectoryNode addChildNode: self