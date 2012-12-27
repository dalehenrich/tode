as yet unclassified
references
    <topezCommand: 'references' manPage: #'referencesManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) referencesTo: (tokens at: 2) ]