as yet unclassified
frame
    <topezCommand: 'frame' manPage: #'frameManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) frame ]