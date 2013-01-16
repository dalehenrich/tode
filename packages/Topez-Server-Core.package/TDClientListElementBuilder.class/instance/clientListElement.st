as yet unclassified
clientListElement
  | clientListElement |
  ^ (clientListElement := TodeClientListElement new)
    clientElementOop;
    listBlock: self listBlock;
    itemSelectedBlock: self itemSelectedBlock;
    selectedIndex: self selectedIndex;
    yourself