as yet unclassified
commit
    <topezCommand: 'commit' manPage: #'commitManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) commit ]