as yet unclassified
down
    <topezCommand: 'down' manPage: #'downManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) down ]