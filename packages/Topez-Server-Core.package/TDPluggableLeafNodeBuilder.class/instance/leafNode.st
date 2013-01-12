as yet unclassified
leafNode
  ^ super leafNode
    getContentsBlock: self getContentsBlock;
    setContentsBlock: self setContentsBlock;
    extensionBlock: self extensionBlock;
    renderAttributeBlock: self renderAttributeBlock;
    yourself