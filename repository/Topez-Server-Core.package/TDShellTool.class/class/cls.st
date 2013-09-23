as yet unclassified
cls
  <topezCommand: 'cls' manPage: #'clsManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]