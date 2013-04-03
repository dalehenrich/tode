as yet unclassified
man
    <topezCommand: 'man' manPage: #'manManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) man ]