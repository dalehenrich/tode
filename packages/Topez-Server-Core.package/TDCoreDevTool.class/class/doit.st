as yet unclassified
doit
    <topezCommand: 'doit' manPage: #'doitManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) doit ]