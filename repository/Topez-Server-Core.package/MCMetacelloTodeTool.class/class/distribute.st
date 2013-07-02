as yet unclassified
distribute
  <topezCommand: 'distribute' manPage: #'distributeManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (MCMetacelloTodeTool
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) distribute ]