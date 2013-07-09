as yet unclassified
ps
  <topezCommand: 'ps' manPage: #'psManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]