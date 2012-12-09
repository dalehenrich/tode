as yet unclassified
man
    <topezCommand: 'man' manPage: #'manManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) man ]