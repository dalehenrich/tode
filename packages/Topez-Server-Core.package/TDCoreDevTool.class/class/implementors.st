as yet unclassified
implementors
    <topezCommand: 'implementors' manPage: #'emptyManPage'>
    ^ [ :topez :tokens :windowId | 
    | tool list |
    tool := TDCoreDevTool topez: topez tokens: tokens windowId: windowId.
    list := tool implementorsOf: (tokens at: 2).
    tool
        editList: list
        label: 'Implementors of ' , (tokens at: 2)
        at: 'implementors'
        level: 2 ]