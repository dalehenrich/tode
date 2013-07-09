as yet unclassified
bu
  <topezCommand: 'bu' manPage: #'buManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]