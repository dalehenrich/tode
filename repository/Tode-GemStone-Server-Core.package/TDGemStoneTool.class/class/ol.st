as yet unclassified
ol
  <topezCommand: 'ol' manPage: #'olManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]