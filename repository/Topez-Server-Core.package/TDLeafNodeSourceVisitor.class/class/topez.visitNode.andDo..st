instance creation
topez: topez visitNode: rootSearchNode andDo: aBlock
  self new
    topez: topez;
    sourceLeafNodeBlock: aBlock;
    visitNode: rootSearchNode