as yet unclassified
stack
  <topezCommand: 'stack' manPage: #'stackManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) stack ]