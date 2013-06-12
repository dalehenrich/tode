as yet unclassified
clientListElement
  ^ TodeClientRoassalElement new
    theObject: self object;
    listBlock: self listBlock;
    edgesBlock: self edgesBlock;
    itemSelectedBlock: self itemSelectedBlock;
    selectedIndex: self selectedIndex;
    windowBuilder: self;
    yourself