as yet unclassified
clientListElement
  | clientListElement |
  clientListElement := TodeClientListElement new
    topez: self topez;
    clientElementOop;
    listBlock: self clientListElementBlock;
    itemSelectedBlock: [ :listElement :index | 
          (listElement itemCache at: index)
            edit: self parent
            topez: listElement topez
            aspect: listElement aspect
            windowId: nil.
          nil ];
    yourself.
  ^ clientListElement