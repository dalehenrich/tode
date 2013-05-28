as yet unclassified
clientListElement
  | clientListElement |
  ^ (clientListElement := TodeClientListElement new)
    theObject: self object;
    listBlock: self listBlock;
    itemSelectedBlock: self itemSelectedBlock;
    selectedIndex: self selectedIndex;
    windowBuilder: self;
    yourself