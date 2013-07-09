as yet unclassified
db
  <topezCommand: 'db' manPage: #'dbManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]