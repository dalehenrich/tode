as yet unclassified
edit: evaluator tokens: theTokens windowId: windowId
    | id codeEditor |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ topez windowIdNamed: #'method' ].
    codeEditor := topez
        editElement: self
        edittingCode: false
        stylingActive: self isTopezSourceNode not
        label: self printString
        inWindow: id
        at: #'method'