as yet unclassified
display
    <topezCommand: 'display' manPage: #'displayManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) display ]