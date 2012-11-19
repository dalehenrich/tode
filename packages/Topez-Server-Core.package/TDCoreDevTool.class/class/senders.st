as yet unclassified
senders
    <topezCommand: 'senders'>
    ^ [ :topez :tokens :windowId | 
    | list |
    list := TDCoreDevTool new sendersOf: (tokens at: 2).
    topez
        editList: list
        label: 'Senders of ' , (tokens at: 2)
        inWindow: windowId
        at: 'implementors'
        level: 2 ]