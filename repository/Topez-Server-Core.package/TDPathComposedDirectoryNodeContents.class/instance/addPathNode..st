entry updating
addPathNode: nodePath
  | node |
  node := TDPathComposedDirectoryEntry new
    path: nodePath;
    topez: self topez;
    yourself.
  self entryList add: node.
  ^ node