private
lookupGwObjNode: nodePath
  | dir diskPath gatewayRootNode rootNode path |
  diskPath := self fileSystemRootPath , nodePath.
  dir := ServerFileDirectory on: diskPath.
  dir assureExistence.
  rootNode := self lookupNode: self rootNodePath.
  path := nodePath findTokens: '/'.
  gatewayRootNode := TDObjectGatewayNode new
    name: path last;
    contents: 'ServerFileDirectory on: ' , diskPath printString.
  rootNode addChildNode: gatewayRootNode.
  ^ gatewayRootNode