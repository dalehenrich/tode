as yet unclassified
fileSystemLeafNodeProxy: aTDFileSystemLeafNode
  ^ TDPluggableLeafNode new
    name: aTDFileSystemLeafNode asTDLeafNode name;
    basicContents: aTDFileSystemLeafNode;
    parent: aTDFileSystemLeafNode parent;
    blockBlock: [ :theNode | theNode basicContents asTDLeafNode block ];
    getContentsBlock: [ :theNode | theNode basicContents asTDLeafNode contents ];
    setContentsBlock: [ :theNode :newContents | theNode basicContents asTDLeafNode contents: newContents ];
    extensionBlock: [ :theNode | theNode basicContents asTDLeafNode class executableExtension ];
    renderAttributeBlock: [ :theNode | theNode basicContents asTDLeafNode renderNameTextAttributes ];
    timeBlock: [ :theNode :aspect | theNode basicContents asTDLeafNode perform: aspect ];
    setTimeBlock: [ :theNode :aspect :value | theNode basicContents asTDLeafNode perform: aspect with: value ];
    catBlock: [ :theNode | theNode basicContents asTDLeafNode cat ];
    dotSelfBlock: [ :theNode | theNode basicContents asTDLeafNode dotSelfObject ];
    getElementSourceBlock: [ :theNode | theNode basicContents asTDLeafNode elementSource ];
    setElementSourceBlock: [ :theNode :newSource | theNode basicContents asTDLeafNode elementSource: newSource ];
    rsyncEqualsBlock: [ :theNode :destNode :aTDSTONRsync | theNode basicContents asTDLeafNode rsyncEquals: destNode with: aTDSTONRsync ];
    rsyncSizeBlock: [ :theNode | theNode basicContents asTDLeafNode rsyncSize ];
    yourself