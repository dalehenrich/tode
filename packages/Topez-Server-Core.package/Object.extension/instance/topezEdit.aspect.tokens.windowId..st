*topez-server-core
topezEdit: aTopez aspect: aspect tokens: theTokens windowId: windowId
    | clientElement |
    clientElement := TDClientSourceElement new
        serverElementOop: self asOop;
        getSelector: #'asString';
        readOnly: true;
        yourself.
    aTopez
        editElement: clientElement
        edittingCode: false
        stylingActive: false
        label: self printString
        inWindow: windowId
        at: #'method'