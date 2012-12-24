as yet unclassified
limit
  <topezCommand: 'limit' manPage: #'limitManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) limit ]