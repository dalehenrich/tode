as yet unclassified
cp
    <topezCommand: 'cp' manPage: #'cpManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) cp ]