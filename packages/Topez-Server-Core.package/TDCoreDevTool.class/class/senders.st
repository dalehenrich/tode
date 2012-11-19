as yet unclassified
senders
    <topezCommand: 'senders'>
    ^ [ :topez :tokens :windowId | 
    | id list |
    id := windowId notNil
        ifTrue: [ windowId ].
    list := TDCoreDevTool new sendersOf: (tokens at: 2).
    topez
        editList: list
        label: 'Senders of ' , (tokens at: 2)
        inWindow: id
        at: 'implementors'
        level: 2 ]