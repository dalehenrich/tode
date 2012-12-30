as yet unclassified
clientListElement
  | clientListElement |
  clientListElement := TodeClientListElement new
    clientElementOop;
    listBlock: self listBlock;
    itemSelectedBlock: self itemSelectedBlock;
    selectedIndex: self currentFrame frameIndex;
    yourself.
  ^ clientListElement