as yet unclassified
edit: evaluator tokens: theTokens windowId: windowId
    | id |
    id := windowId notNil
        ifTrue: [ windowId ]
        ifFalse: [ topez windowIdNamed: #'class' ].
    topez
        editList: {(self contents)}
        label: 'Class'
        inWindow: id
        at: 'classes'