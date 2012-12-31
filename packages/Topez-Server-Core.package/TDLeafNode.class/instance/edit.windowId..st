as yet unclassified
edit: aTopez windowId: windowId
  | clientElement |
  clientElement := self clientElementClass new
    clientElementOop;
    getBlock: self getBlock;
    setBlock: self setBlock;
    yourself.
  ^ aTopez
    editSourceElement: clientElement
    label: self printString
    inWindow: windowId
    at: #'method'