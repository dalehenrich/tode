as yet unclassified
shellPrint
  <topezCommand: 'print' manPage: #'shellPrintManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) shellPrint ]