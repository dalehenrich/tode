as yet unclassified
touch
    <topezCommand: 'touch' manPage: #'touchManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) touch ]