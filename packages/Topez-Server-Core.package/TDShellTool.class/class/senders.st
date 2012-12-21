as yet unclassified
senders
    <topezCommand: 'senders' manPage: #'sendersManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) sendersOf: (tokens at: 2) ]