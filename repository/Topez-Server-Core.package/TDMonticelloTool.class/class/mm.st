as yet unclassified
mm
  <topezCommand: 'mm' manPage: #'mmManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]