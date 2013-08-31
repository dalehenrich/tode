as yet unclassified
cym
  <topezCommand: 'cym' manPage: #'cymManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]