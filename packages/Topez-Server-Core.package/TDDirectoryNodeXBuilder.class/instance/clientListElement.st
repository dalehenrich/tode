as yet unclassified
clientListElement
  | clientListElement |
  (clientListElement := TodeClientListElement new)
    aspect: #'edit';
    clientElementOop;
    firstList: (self clientList: clientListElement);
    listBlock: [ :listElement | STON toString: (self clientList: listElement) ];
    itemSelectedBlock: [ :listElement :index | 
          | aspect parent |
          aspect := listElement aspect.
          parent := listElement parentNode.
          parent ~~ nil
            ifTrue: [ 
              aspect == 1
                ifTrue: [ 
                  "."
                  aspect := #'inspect' ].
              index == 2
                ifTrue: [ 
                  ".."
                  aspect := listElement parentNode aspect.
                  parent := parent parent ] ].
          (listElement itemCache at: index)
            edit: parent
            topez: listElement topez
            aspect: aspect
            windowId: nil.
          nil ];
    yourself.
  ^ clientListElement