as yet unclassified
clientListElement
  | clientListElement |
  clientListElement := TodeClientListElement new
    clientElementOop;
    firstList: (self clientList: nil);
    listBlock: [ :listElement | STON toString: (self clientList: listElement) ];
    itemSelectedBlock: [ :listElement :index | 
          | frameNode |
          self navigateFrame: index.
          currentFrame
            edit: listElement parentNode
              topez: listElement topez
              aspect: #'source'
              windowId: nil;
            edit: listElement parentNode
              topez: listElement topez
              aspect: #'contents'
              windowId: nil.
          frameNode := listElement topez
            lookup: listElement topez homeNode printString , currentFrame frameIndex asString.
          listElement topez currentNode: frameNode.
          nil ];
    selectedIndex: self currentFrame frameIndex;
    yourself.
  ^ clientListElement