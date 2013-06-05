as yet unclassified
deploy
  <topezCommand: 'deploy' manPage: #'deployManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (MCFileTreeTodeTool
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) deploy ]