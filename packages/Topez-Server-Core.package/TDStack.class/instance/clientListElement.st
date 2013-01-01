as yet unclassified
clientListElement
  | clientListElement |
  clientListElement := TodeClientListElement new
    clientElementOop;
    listBlock: [ :listElement | STON toString: (self frames withIndexCollect: [ :frame :index | index asString , '. ' , frame printString ]) ];
    itemSelectedBlock: [ :listElement :index | 
          self navigateFrame: index.
          currentFrame edit: listElement topez aspect: listElement aspect windowId: nil.
          nil ];
    selectedIndex: self currentFrame frameIndex;
    yourself.
  ^ clientListElement