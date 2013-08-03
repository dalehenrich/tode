as yet unclassified
git
  <topezCommand: 'git' manPage: #'gitManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]