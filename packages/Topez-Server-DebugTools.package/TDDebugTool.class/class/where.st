as yet unclassified
where
    <topezCommand: 'where' manPage: #'whereManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) where ]