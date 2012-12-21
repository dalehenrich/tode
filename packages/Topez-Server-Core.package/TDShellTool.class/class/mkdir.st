as yet unclassified
mkdir
    <topezCommand: 'mkdir' manPage: #'mkdirManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) mkdir ]