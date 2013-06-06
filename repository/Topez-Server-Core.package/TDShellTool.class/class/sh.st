as yet unclassified
sh
  <topezCommand: 'sh' manPage: #'shManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) sh ]