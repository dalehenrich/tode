as yet unclassified
moveDirectoryNode: aDirectoryNode as: newName
  aDirectoryNode parent removeChildNode: aDirectoryNode.
  aDirectoryNode name: newName.
  ^ self addChildNode: aDirectoryNode