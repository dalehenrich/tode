tests
testMountCommand
  "run without errors ... to keep me honest"

  | mountPointNode mountDirNode mountLeafNode homeStonNode rootPath mountPointPath mountPointFileSystemPath |
  rootPath := self rootNodePath.
  mountPointPath := rootPath , 'mount'.
  mountPointNode := self lookupFsNode: mountPointPath.
  mountDirNode := mountPointNode addChild: 'home'.
  homeStonNode := self smallSetLeafNodes first.
  mountLeafNode := mountPointNode addChildNode: homeStonNode.
  mountPointFileSystemPath := self fileSystemRootPath , mountPointPath.
  self
    evaluateCommandString: 'mount --help';
    evaluateCommandString: 'mount ' , mountPointFileSystemPath , '/home /';
    evaluateCommandString:
        'mount ' , mountPointFileSystemPath , '/home / todeHome';
    evaluateCommandString:
        'mount ' , mountPointFileSystemPath , '/' , homeStonNode name
            , '.ston / todeHome';
    yourself.
  self topez serverTodeRoot: mountPointFileSystemPath.
  self
    evaluateCommandString: 'mount --todeRoot home / ';
    evaluateCommandString: 'mount --todeRoot home / todeHome';
    evaluateCommandString:
        'mount --todeRoot ' , homeStonNode name , '.ston / todeHome';
    yourself