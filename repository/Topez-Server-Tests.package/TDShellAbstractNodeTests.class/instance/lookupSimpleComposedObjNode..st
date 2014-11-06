private
lookupSimpleComposedObjNode: nodePath
  | objPath composedNode rootNode path |
  objPath := self objNodePath , nodePath.
  self topez ensureChildrenExistIn: objPath.
  rootNode := self lookupNode: self rootNodePath.
  path := objPath findTokens: '/'.
  composedNode := TDRawGatewayNode new
    name: path last;
    contents:
        'TDComposedDirectoryNode objPath: ' , objPath printString , ' topez: self topez';
    topez: self topez;
    yourself.
  rootNode addChildNode: composedNode.
  ^ composedNode