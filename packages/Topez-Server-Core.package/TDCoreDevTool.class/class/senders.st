as yet unclassified
senders
    <topezCommand: 'senders'>
    ^ [ :topez :tokens :windowId | 
    | tool list |
    tool := TDCoreDevTool topez: topez tokens: tokens windowId: windowId.
    list := tool sendersOf: (tokens at: 2).
    tool
        editList: list
        label: 'Senders of ' , (tokens at: 2)
        at: 'implementors'
        level: 2 ]