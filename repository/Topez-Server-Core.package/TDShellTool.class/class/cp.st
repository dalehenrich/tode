as yet unclassified
cp
    <topezCommand: 'cp' manPage: #'cpManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) cp ]