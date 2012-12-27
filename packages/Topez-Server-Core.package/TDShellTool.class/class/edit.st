as yet unclassified
edit
    <topezCommand: 'edit' manPage: #'editManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) edit ]