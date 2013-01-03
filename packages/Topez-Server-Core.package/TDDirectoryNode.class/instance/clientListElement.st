as yet unclassified
clientListElement
  | clientListElement |
  clientListElement := TodeClientListElement new
    aspect: #'edit';
    topez: self topez;
    clientElementOop;
    listBlock: self clientListElementBlock;
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
    yourself.
  ^ clientListElement