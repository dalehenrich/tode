as yet unclassified
rm
    <topezCommand: 'rm' manPage: #'rmManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) rm ]