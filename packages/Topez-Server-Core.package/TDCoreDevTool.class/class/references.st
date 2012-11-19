as yet unclassified
references
    <topezCommand: 'references'>
    ^ [ :topez :tokens :windowId | 
    | list |
    list := TDCoreDevTool new referencesTo: (tokens at: 2).
    topez
        editList: list
        label: 'References to ' , (tokens at: 2)
        inWindow: windowId
        at: 'implementors'
        level: 2 ]