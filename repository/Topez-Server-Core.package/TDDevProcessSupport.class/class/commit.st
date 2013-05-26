as yet unclassified
commit
  <topezCommand: 'commit' manPage: #'commitManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (TDDevProcessSupport
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) commit ]