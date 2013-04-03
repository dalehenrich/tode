as yet unclassified
view
  <topezCommand: 'view' manPage: #'viewManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) view ]