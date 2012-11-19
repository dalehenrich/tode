as yet unclassified
implementors
    <topezCommand: 'implementors'>
    ^ [ :topez :tokens :windowId | 
    | id list |
    id := windowId notNil
        ifTrue: [ windowId ].
    list := TDCoreDevTool new implementorsOf: (tokens at: 2).
    topez
        editList: list
        label: 'Implementors of ' , (tokens at: 2)
        inWindow: id
        at: 'implementors'
        level: 2 ]