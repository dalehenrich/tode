instance creation
topez: topez visitNode: rootSearchNode andDo: aBlock
  self new
    topez: topez;
    executableStLeafNodeBlock: aBlock;
    visitNode: rootSearchNode