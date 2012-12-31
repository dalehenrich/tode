as yet unclassified
clientListElement
  | clientListElement |
  clientListElement := TodeClientListElement new
    topez: self topez;
    clientElementOop;
    listBlock: self clientListElementBlock;
    itemSelectedBlock: [ :listElement :index | 
          (listElement itemCache at: index) edit: listElement topez windowId: nil.
          nil ];
    yourself.
  ^ clientListElement