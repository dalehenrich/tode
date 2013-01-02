as yet unclassified
clientContentsElement
  ^ TodeClientListElement new
    clientElementOop;
    aspect: #'edit';
    listBlock: self clientContentsListElementBlock;
    itemSelectedBlock: [ :listElement :index | 
          | aspect |
          aspect := listElement aspect.
          index == 1
            ifTrue: [ 
              "."
              aspect := #'inspect' ].
          (listElement itemCache at: index) edit: listElement topez aspect: aspect windowId: nil.
          nil ];
    yourself