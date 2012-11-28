as yet unclassified
edit: aTopez tokens: theTokens windowId: windowId
    | id clientElement |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ aTopez windowIdNamed: #'method' ].
    clientElement := TDClientSourceElement new
        serverElementOop: self asOop;
        getSelector: #'source';
        setSelector: #'source:';
        yourself.
    aTopez
        editElement: clientElement
        edittingCode: false
        stylingActive: true
        label: self printString
        inWindow: windowId
        at: #'method'