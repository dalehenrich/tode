as yet unclassified
clientContentsElement
  ^ TodeClientListElement new
    clientElementOop;
    aspect: #'edit';
    listBlock: self clientContentsListElementBlock;
    itemSelectedBlock: [ :listElement :index | 
          (listElement itemCache at: index) edit: listElement topez aspect: listElement aspect windowId: nil.
          nil ];
    yourself