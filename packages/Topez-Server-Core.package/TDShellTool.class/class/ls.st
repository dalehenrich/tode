as yet unclassified
ls
    <topezCommand: 'ls' manPage: #'lsManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) ls ]