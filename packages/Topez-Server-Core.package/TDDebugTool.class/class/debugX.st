as yet unclassified
debugX
  <topezCommand: 'debugX' manPage: #'debugManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) debugX ]