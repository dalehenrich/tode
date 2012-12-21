as yet unclassified
commit
    <topezCommand: 'commit' manPage: #'commitManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) commit ]