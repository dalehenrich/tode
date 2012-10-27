as yet unclassified
edit: evaluator topez: topez tokens: theTokens windowId: windowId
    | id |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ topez windowIdNamed: #'method' ].
    topez
        editTextElement: self
        label: self printString
        inWindow: id
        at: #'method'