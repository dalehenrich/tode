as yet unclassified
cd
    <topezCommand: 'cd' manPage: #'cdManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) cd ]