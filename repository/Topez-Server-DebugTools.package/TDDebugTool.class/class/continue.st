as yet unclassified
continue
  <topezCommand: 'continue' manPage: #'continueManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) dbJustContinue ]