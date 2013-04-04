as yet unclassified
ston
  <topezCommand: 'ston' manPage: #'stonManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) ston ]