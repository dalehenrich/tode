as yet unclassified
gs
  <topezCommand: 'gs' manPage: #'gsManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]