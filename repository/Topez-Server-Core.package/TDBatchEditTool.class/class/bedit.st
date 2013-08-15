as yet unclassified
bedit
  <topezCommand: 'bedit' manPage: #'beditManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]