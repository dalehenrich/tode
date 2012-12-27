as yet unclassified
edit: aTopez windowId: windowId
  | clientElement |
  clientElement := TodeClientTextElement new
    getBlockOop: self getBlock asOop;
    setBlockOop: self setBlock asOop;
    yourself.
  clientElement clientElementOop: clientElement asOop.
  ^ aTopez
    editElement: clientElement
    label: self printString
    inWindow: windowId
    at: #'method'