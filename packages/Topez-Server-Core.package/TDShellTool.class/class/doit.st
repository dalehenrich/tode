as yet unclassified
doit
  <topezCommand: 'doit' manPage: #'doitManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) doit ]