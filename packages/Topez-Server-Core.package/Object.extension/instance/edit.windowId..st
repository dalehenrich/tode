*topez-server-core
edit: aTopez windowId: windowId
    | clientElement |
    clientElement := TDClientSourceElement new
        serverElementOop: self asOop;
        getSelector: #'asString';
        yourself.
    aTopez
        editElement: clientElement
        edittingCode: false
        stylingActive: false
        label: self printString
        inWindow: windowId
        at: #'method'