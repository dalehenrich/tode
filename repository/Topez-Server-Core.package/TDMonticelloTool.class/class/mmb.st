as yet unclassified
mmb
  <topezCommand: 'mmb' manPage: #'mmbManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]