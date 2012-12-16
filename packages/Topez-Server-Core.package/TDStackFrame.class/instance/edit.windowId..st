as yet unclassified
edit: aTopez windowId: windowId
    | clientElement |
    clientElement := TDClientSourceElement new
        serverElementOop: self asOop;
        getSelector: #'homeMethodSource';
        getSelector: #'homeMethodSource:';
        yourself.
    aTopez
        editElement: clientElement
        edittingCode: true
        stylingActive: true
        label: self printString
        inWindow: windowId
        at: #'debug'