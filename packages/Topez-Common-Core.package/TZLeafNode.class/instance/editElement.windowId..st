as yet unclassified
editElement: theTokens windowId: windowId
    | id element |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ topez windowIdNamed: #'method' ].
    element := TDServerNodeElement new
        node: self;
        yourself.
    topez
        editElement: element
        edittingCode: false
        stylingActive: true
        label: self printString
        inWindow: windowId
        at: #'method'