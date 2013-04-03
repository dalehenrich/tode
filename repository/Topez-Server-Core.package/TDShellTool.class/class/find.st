as yet unclassified
find
  <topezCommand: 'find' manPage: #'findManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) find ]