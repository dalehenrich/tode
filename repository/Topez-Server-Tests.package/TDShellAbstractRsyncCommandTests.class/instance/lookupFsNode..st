private
lookupFsNode: nodePath
  | dir diskPath diskRootNode rootNode |
  diskPath := self fileSystemRootPath , nodePath.
  dir := ServerFileDirectory on: diskPath.
  dir assureExistence.
  rootNode := self lookupNode: self rootNodePath.
  diskRootNode := dir asTDObjectNode: nil topez: self topez aspect: #'view'.
  rootNode addChildNode: diskRootNode.
  ^ diskRootNode