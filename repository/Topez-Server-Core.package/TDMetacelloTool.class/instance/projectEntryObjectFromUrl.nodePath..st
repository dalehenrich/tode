project
projectEntryObjectFromUrl: url nodePath: projectPath
  | projectEntryNode node |
  projectEntryNode := self projectProjectEntryFromUrl: url.
  node := (self topez lookup: projectPath) addChildLeafNode: projectEntryNode.
  node topez: self topez.
  ^ node dotSelfObject