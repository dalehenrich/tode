as yet unclassified
clientContentsElement
  ^ TodeClientListElement new
    clientElementOop;
    aspect: #'edit';
    firstList: (self clientContentsList: nil);
    listBlock: [ :listElement | STON toString: (self clientContentsList: listElement) ];
    itemSelectedBlock: [ :listElement :index | 
          | aspect parent |
          aspect := listElement aspect.
          parent := listElement parentNode.
          aspect == 1
            ifTrue: [ 
              "."
              aspect := #'inspect'.
              parent := parent parent ].
          index == 2
            ifTrue: [ 
              ".."
              aspect := listElement parentNode aspect.
              parent := parent parent parent ].
          (listElement itemCache at: index)
            edit: parent
            topez: listElement topez
            aspect: aspect
            windowId: nil.
          nil ];
    yourself