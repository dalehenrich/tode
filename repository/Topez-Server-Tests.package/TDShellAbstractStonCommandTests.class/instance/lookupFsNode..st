private
lookupFsNode: nodePath
  | dir parentNode diskPath diskRootNode |
  diskPath := self fileSystemRootPath , nodePath.
  dir := ServerFileDirectory on: diskPath.
  dir assureExistence.
  parentNode := (self lookupNode: self rootNodePath) parent.
  diskRootNode := dir asTDObjectNode: nil topez: self topez aspect: #'view'.
  parentNode addChildNode: diskRootNode.
  ^ diskRootNode