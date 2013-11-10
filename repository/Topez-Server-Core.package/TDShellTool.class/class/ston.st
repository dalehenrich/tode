as yet unclassified
ston
  <topezCommand: 'ston' manPage: #'stonManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]