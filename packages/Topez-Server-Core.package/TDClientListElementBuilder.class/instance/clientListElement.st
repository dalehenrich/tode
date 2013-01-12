as yet unclassified
clientListElement
  | clientListElement |
  ^ (clientListElement := TodeClientListElement new)
    clientElementOop;
    firstList: (self firstList: clientListElement);
    listBlock: self listBlock;
    itemSelectedBlock: self itemSelectedBlock;
    selectedIndex: self selectedIndex;
    yourself