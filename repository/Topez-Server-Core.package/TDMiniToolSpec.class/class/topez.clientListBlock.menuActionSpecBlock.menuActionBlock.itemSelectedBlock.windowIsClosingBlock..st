as yet unclassified
topez: aTDTopezServer clientListBlock: clientListBlock menuActionSpecBlock: menuActionSpecBlock menuActionBlock: menuActionBlock itemSelectedBlock: itemSelectedBlock windowIsClosingBlock: windowIsClosingBlock
  ^ (self topez: aTDTopezServer editorAspect: #'miniTool')
    clientListBlock: clientListBlock;
    menuActionSpecBlock: menuActionSpecBlock;
    menuActionBlock: menuActionBlock;
    itemSelectedBlock: itemSelectedBlock;
    windowIsClosingBlock: windowIsClosingBlock;
    yourself