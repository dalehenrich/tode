as yet unclassified
abort
    <topezCommand: 'abort' manPage: #'abortManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) abort ]