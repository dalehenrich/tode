as yet unclassified
edit
    <topezCommand: 'edit' manPage: #'editManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) edit ]