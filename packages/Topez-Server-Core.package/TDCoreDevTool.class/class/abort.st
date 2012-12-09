as yet unclassified
abort
    <topezCommand: 'abort' manPage: #'abortManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) abort ]