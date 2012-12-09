as yet unclassified
run
    <topezCommand: 'run' manPage: #'runManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) run ]