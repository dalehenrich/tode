*topez-server-core
edit: aTopez windowId: windowId
  | clientElement |
  clientElement := TodeClientSourceElement new
    getBlockOop: [ self asString ] asOop;
    yourself.
  clientElement clientElementOop: clientElement asOop.
  ^ aTopez
    editSourceElement: clientElement
    label: self printString
    inWindow: windowId
    at: #'method'