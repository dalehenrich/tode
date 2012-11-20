as yet unclassified
references
    <topezCommand: 'references'>
    ^ [ :topez :tokens :windowId | 
    | tool list |
    tool := TDCoreDevTool topez: topez tokens: tokens windowId: windowId.
    list := tool referencesTo: (tokens at: 2).
    tool
        editList: list
        label: 'References to ' , (tokens at: 2)
        at: 'implementors'
        level: 2 ]