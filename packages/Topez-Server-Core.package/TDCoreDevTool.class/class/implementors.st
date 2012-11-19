as yet unclassified
implementors
    <topezCommand: 'implementors'>
    ^ [ :topez :tokens :windowId | 
    | list |
    list := TDCoreDevTool new implementorsOf: (tokens at: 2).
    topez
        editList: list
        label: 'Implementors of ' , (tokens at: 2)
        inWindow: windowId
        at: 'implementors'
        level: 2 ]