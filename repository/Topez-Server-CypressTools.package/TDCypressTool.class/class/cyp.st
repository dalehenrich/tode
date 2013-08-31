as yet unclassified
cyp
  <topezCommand: 'cyp' manPage: #'cypManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]