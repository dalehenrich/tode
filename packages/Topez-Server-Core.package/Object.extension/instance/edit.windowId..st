*topez-server-core
edit: aTopez windowId: windowId
  | clientElement |
  clientElement := TodeClientSourceElement new
    clientElementOop;
    getBlock: [ self asString ];
    yourself.
  ^ aTopez
    editSourceElement: clientElement
    label: self printString
    inWindow: windowId
    at: #'method'