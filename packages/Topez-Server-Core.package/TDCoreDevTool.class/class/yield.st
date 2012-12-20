as yet unclassified
yield
  <topezCommand: 'yield' manPage: #'yieldManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (TDCoreDevTool
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) yield ]