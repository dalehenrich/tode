as yet unclassified
pf
  <topezCommand: 'pf' manPage: #'pfManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]