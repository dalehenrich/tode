as yet unclassified
diff
  <topezCommand: 'diff' manPage: #'diffManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (TDDevProcessSupport
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) diff ]