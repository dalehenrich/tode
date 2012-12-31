as yet unclassified
clientListElement
  | clientListElement |
  clientListElement := TodeClientListElement new
    clientElementOop;
    listBlock: self clientListElementBlock;
    itemSelectedBlock: [ :listElement :index | 
          (listElement itemCache at: index) edit: listElement topezServerProxy windowId: nil.
          nil ];
    selectedIndex: self currentFrame frameIndex;
    yourself.
  ^ clientListElement