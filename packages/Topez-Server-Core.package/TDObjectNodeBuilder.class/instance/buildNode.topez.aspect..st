as yet unclassified
buildNode: parentNode topez: aTopez aspect: anAspect
  ^ TDObjectNode new
    name: self nodeName;
    parent: parentNode;
    aspect: anAspect;
    topez: aTopez;
    basicContents: self basicContents;
    readMe: self readmeString;
    listBlock: self listBlock;
    elementBlock: self elementBlock;
    addBlock: self addBlock;
    editBlock: self editBlock;
    collectionBlock: self collectionBlock;
    removeBlock: self removeBlock;
    extensionBlock: self extensionBlock;
    renderAttributeBlock: self renderAttributeBlock;
    elementExtensionBlock: self elementExtensionBlock;
    elementRenderAttributeBlock: self elementRenderAttributeBlock;
    yourself