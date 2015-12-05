project
projectEntryObjectFromUrl: url nodePath: projectPath
  | node projectDirNode projectEntryNode |
  projectDirNode := self topez lookup: projectPath.
  projectEntryNode := self projectProjectEntryFromUrl: url.
  node := projectDirNode
    childNamed: projectEntryNode name
    ifAbsent: [ projectDirNode addChildLeafNode: projectEntryNode ].
  ^ node dotSelfObject