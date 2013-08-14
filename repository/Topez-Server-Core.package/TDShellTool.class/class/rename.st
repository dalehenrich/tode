as yet unclassified
rename
  <topezCommand: 'rename' manPage: #'renameManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]