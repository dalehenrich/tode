as yet unclassified
ts
  <topezCommand: 'ts' manPage: #'tsManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]