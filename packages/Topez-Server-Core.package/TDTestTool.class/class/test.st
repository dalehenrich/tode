as yet unclassified
test
  <topezCommand: 'test' manPage: #'testManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) test ]