as yet unclassified
mkdir
    <topezCommand: 'mkdir' manPage: #'mkdirManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) mkdir ]