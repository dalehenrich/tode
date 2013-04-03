as yet unclassified
run
    <topezCommand: 'run' manPage: #'runManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) run ]