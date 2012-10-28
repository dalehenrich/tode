as yet unclassified
edit: evaluator topez: tpz tokens: theTokens windowId: windowId
    | id |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ topez windowIdNamed: #'ls' ].
    tpz
        editList: self objectCollection
        label: self printString
        inWindow: windowId
        at: 'classes'