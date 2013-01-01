as yet unclassified
edit: aTopez aspect: anAspect windowId: windowId
  "anAspect: #edit, #debug, #inspect"

  | clientElement |
  anAspect == #'inspect'
    ifTrue: [ ^ super edit: aTopez aspect: anAspect windowId: windowId ].
  clientElement := self clientElementClass new
    clientElementOop;
    aspect: anAspect;
    getBlock: self getBlock;
    setBlock: self setBlock;
    yourself.
  ^ aTopez
    editSourceElement: clientElement
    label: self printString
    inWindow: windowId
    at: #'method'