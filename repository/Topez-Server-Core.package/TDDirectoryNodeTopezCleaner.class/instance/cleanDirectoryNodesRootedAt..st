cleaning
cleanDirectoryNodesRootedAt: aDirectoryNode
  dNodes := {}.
  self visitNode: aDirectoryNode.
  ^ dNodes