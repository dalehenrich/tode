as yet unclassified
editElement: theTokens windowId: windowId
    | id clientElement |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ topez windowIdNamed: #'method' ].
    clientElement := TDClientSourceElement new
        serverElementOop: self asOop;
        getSelector: #'source';
        setSelector: #'source';
        yourself.
    topez
        editElement: clientElement
        edittingCode: false
        stylingActive: true
        label: self printString
        inWindow: windowId
        at: #'method'