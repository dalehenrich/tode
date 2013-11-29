as yet unclassified
fileSystemProxy: aTDFileSystemLeafNode for: aTDLeafNode
  TDPluggableLeafNode new
    name: aTDLeafNode name;
    parent: aTDFileSystemLeafNode parent;
    getContentsBlock: [ :theNode | aTDLeafNode elementSource ];
    setContentsBlock: [ :theNode :newContents | aTDLeafNode elementSource: newContents ];
    extensionBlock: [ :theNode | aTDLeafNode class executableExtension ];
    renderAttributeBlock: [ :theNode | aTDLeafNode renderNameTextAttributes ];
    yourself