as yet unclassified
touch
    <topezCommand: 'touch' manPage: #'touchManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) touch ]