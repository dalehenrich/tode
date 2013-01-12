as yet unclassified
debug
  <topezCommand: 'debug' manPage: #'debugManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) debug ]