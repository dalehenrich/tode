as yet unclassified
mg
  <topezCommand: 'mg' manPage: #'mgManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]