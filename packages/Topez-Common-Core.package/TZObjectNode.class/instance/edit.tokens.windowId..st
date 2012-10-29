as yet unclassified
edit: evaluator tokens: theTokens windowId: windowId
    | id |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ topez windowIdNamed: #'ls' ].
    topez
        editList: self objectCollection
        label: self printString
        inWindow: windowId
        at: 'classes'