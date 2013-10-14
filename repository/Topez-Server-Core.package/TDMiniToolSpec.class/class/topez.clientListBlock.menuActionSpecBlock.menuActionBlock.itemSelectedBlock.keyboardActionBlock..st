as yet unclassified
topez: aTDTopezServer clientListBlock: clientListBlock menuActionSpecBlock: menuActionSpecBlock menuActionBlock: menuActionBlock itemSelectedBlock: itemSelectedBlock keyboardActionBlock: keyboardActionBlock
  ^ (self topez: aTDTopezServer editorAspect: #'miniTool')
    clientListBlock: clientListBlock;
    menuActionSpecBlock: menuActionSpecBlock;
    menuActionBlock: menuActionBlock;
    itemSelectedBlock: itemSelectedBlock;
    keyboardActionBlock: keyboardActionBlock;
    yourself