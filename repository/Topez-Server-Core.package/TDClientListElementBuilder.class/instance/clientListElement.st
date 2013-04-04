as yet unclassified
clientListElement
  | clientListElement |
  ^ (clientListElement := TodeClientListElement new)
    theObject: self object;
    clientElementOop;
    listBlock: self listBlock;
    itemSelectedBlock: self itemSelectedBlock;
    selectedIndex: self selectedIndex;
    yourself