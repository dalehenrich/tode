as yet unclassified
references
    <topezCommand: 'references'>
    ^ [ :topez :tokens :windowId | 
    | id list |
    id := windowId notNil
        ifTrue: [ windowId ].
    list := TDCoreDevTool new referencesTo: (tokens at: 2).
    topez
        editList: list
        label: 'References to ' , (tokens at: 2)
        inWindow: id
        at: 'implementors'
        level: 2 ]