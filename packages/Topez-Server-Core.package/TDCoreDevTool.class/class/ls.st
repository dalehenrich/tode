as yet unclassified
ls
    <topezCommand: 'ls' manPage: #'lsManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) ls ]