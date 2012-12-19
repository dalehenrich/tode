as yet unclassified
edit: aTopez windowId: windowId
    | clientElement |
    clientElement := TDClientTextElement new
        serverElementOop: self asOop;
        getSelector: #'contents';
        setSelector: #'contents:';
        yourself.
    aTopez
        editElement: clientElement
        edittingCode: false
        stylingActive: false
        label: self printString
        inWindow: windowId
        at: #'method'