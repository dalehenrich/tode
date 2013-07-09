as yet unclassified
mr
  <topezCommand: 'mr' manPage: #'mrManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]