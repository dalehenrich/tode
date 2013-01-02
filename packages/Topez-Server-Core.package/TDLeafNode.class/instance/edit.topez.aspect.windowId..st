as yet unclassified
edit: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | clientElement |
  anAspect == #'inspect'
    ifTrue: [ 
      ^ super
        edit: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: inWindowId ].
  clientElement := self clientElementClass new
    clientElementOop;
    aspect: anAspect;
    getBlock: self getBlock;
    setBlock: self setBlock;
    yourself.
  ^ aTopez
    editSourceElement: clientElement
    label: self printString
    inWindow: inWindowId
    at: #'method'