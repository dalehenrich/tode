as yet unclassified
history
  <topezCommand: 'history' manPage: #'historyManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]