tests
testMountCommand
  "run without errors ... to keep me honest"

  | mountPointNode mountDirNode mountLeafNode homeStonNode rootPath mountPointPath mountPointFileSystemPath objRoot objRootNode |
  rootPath := self rootNodePath.
  objRoot := self objNodePath.
  self topez ensureChildrenExistIn: objRoot.
  objRootNode := self topez lookup: objRoot.
  mountPointPath := rootPath , 'mount'.
  mountPointNode := self lookupFsNode: mountPointPath.
  mountDirNode := mountPointNode addChild: 'home'.
  homeStonNode := self smallSetLeafNodes first.
  mountLeafNode := mountPointNode addChildNode: homeStonNode.
  mountPointFileSystemPath := self fileSystemRootPath , mountPointPath.
  self
    evaluateCommandString: 'mount --help';
    evaluateCommandString:
        'mount ' , mountPointFileSystemPath , '/home ' , objRootNode printString;
    evaluateCommandString:
        'mount ' , mountPointFileSystemPath , '/home ' , objRootNode printString
            , ' todeHome';
    evaluateCommandString:
        'mount ' , mountPointFileSystemPath , '/' , homeStonNode name , '.ston '
            , objRootNode printString , ' todeHome';
    yourself.
  self topez serverTodeRoot: mountPointFileSystemPath.
  self
    evaluateCommandString: 'mount --todeRoot home ' , objRootNode printString;
    evaluateCommandString:
        'mount --todeRoot home ' , objRootNode printString , ' todeHome';
    evaluateCommandString:
        'mount --todeRoot ' , homeStonNode name , '.ston ' , objRootNode printString
            , ' todeHome';
    yourself