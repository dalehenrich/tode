accessing
clientListElement
  ^ TodeClientListElement new
    theObject: self object;
    listBlock: self listBlock;
    itemSelectedBlock: self itemSelectedBlock;
    selectedIndex: self selectedIndex;
    usePersistentClientElementCache: self usePersistentClientElementCache;
    windowBuilder: self;
    timestamp;
    yourself