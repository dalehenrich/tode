private
lookupSimpleComposedFsNode: nodePath
  | dir diskPath composedNode rootNode path |
  diskPath := self fileSystemRootPath , nodePath.
  dir := ServerFileDirectory on: diskPath.
  dir assureExistence.
  rootNode := self lookupNode: self rootNodePath.
  path := nodePath findTokens: '/'.
  composedNode := TDRawGatewayNode new
    name: path last;
    contents:
        'TDComposedDirectoryNode serverDiskPath: ' , diskPath printString
            , ' topez: self topez';
    topez: self topez;
    yourself.
  rootNode addChildNode: composedNode.
  ^ composedNode