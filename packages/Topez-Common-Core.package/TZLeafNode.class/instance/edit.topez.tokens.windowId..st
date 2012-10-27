as yet unclassified
edit: evaluator topez: topez tokens: theTokens windowId: windowId
    | id codeEditor |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ topez windowIdNamed: #'method' ].
    codeEditor := topez
        editTextElement: self
        label: self printString
        inWindow: id
        at: #'method'.
    self isTopezSourceNode
        ifFalse: [ codeEditor stylingActive: true ]