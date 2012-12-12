as yet unclassified
halos
    <topezCommand: 'halos' manPage: #'halosManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDHaloDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) halos ]