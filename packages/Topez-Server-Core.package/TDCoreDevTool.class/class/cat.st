as yet unclassified
cat
    <topezCommand: 'cat' manPage: #'catManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) cat ]