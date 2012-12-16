as yet unclassified
edit: aTopez windowId: inWindowId
    | clientElement windowId |
    clientElement := TDClientSourceElement new
        serverElementOop: self asOop;
        inClassOop: self inClass asOop;
        getSelector: #'homeMethodSource';
        setSelector: #'homeMethodSource:';
        yourself.
    windowId := inWindowId.
    windowId == nil
        ifTrue: [ windowId := aTopez windowIdNamed: #'debugger' ].
    aTopez
        editElement: clientElement
        edittingCode: true
        stylingActive: true
        label: self printString
        inWindow: windowId
        at: #'method'