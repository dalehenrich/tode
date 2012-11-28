as yet unclassified
edit: evaluator tokens: theTokens windowId: windowId
    | id |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ topez windowIdNamed: #'method' ].
    topez
        editElement: self
        edittingCode: false
        stylingActive: self isTopezSourceNode not
        label: self printString
        inWindow: id
        at: #'method'