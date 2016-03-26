accessing
clearStaleTopezReferences
  "self clearStaleTopezReferences"

  | nodes |
  nodes := TDDirectoryNodeTopezCleaner
    cleanDirectoryNodesRootedAt: self rootNode.
  nodes do: [ :node | node topez: nil ].
  ^ nodes