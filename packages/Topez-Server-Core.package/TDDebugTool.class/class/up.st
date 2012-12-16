as yet unclassified
up
    <topezCommand: 'up' manPage: #'upManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) up ]