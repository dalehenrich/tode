as yet unclassified
pwd
    <topezCommand: 'pwd' manPage: #'pwdManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (self
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) pwd ]