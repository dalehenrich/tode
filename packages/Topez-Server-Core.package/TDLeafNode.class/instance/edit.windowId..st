as yet unclassified
edit: aTopez windowId: windowId
  | clientElement |
  clientElement := self clientElementClass new
    getBlockOop: self getBlock asOop;
    setBlockOop: self setBlock asOop;
    yourself.
  clientElement clientElementOop: clientElement asOop.
  ^ aTopez
    editSourceElement: clientElement
    label: self printString
    inWindow: windowId
    at: #'method'