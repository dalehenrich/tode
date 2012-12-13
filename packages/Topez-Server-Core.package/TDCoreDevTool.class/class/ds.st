as yet unclassified
ds
    <topezCommand: 'ds' manPage: #'dsManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) ds ]