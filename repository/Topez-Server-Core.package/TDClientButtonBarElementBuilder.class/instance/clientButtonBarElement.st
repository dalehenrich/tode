accessing
clientButtonBarElement
  ^ TodeClientButtonBarElement new
    theObject: self object;
    switchSpecs: self switchSpecs;
    switchActionBlock: self switchActionBlock;
    usePersistentClientElementCache: self usePersistentClientElementCache;
    windowBuilder: self;
    timestamp;
    yourself