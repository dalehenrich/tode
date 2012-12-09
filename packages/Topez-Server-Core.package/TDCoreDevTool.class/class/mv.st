as yet unclassified
mv
    <topezCommand: 'mv' manPage: #'mvManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) mv ]