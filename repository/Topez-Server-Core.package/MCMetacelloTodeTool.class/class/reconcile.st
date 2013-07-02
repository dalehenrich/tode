as yet unclassified
reconcile
  <topezCommand: 'reconcile' manPage: #'reconcileManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (MCMetacelloTodeTool
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) reconcile ]