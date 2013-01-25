as yet unclassified
browse
  <topezCommand: 'browse' manPage: #'browseManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) browse ]