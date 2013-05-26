as yet unclassified
backup
  <topezCommand: 'backup' manPage: #'backupManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (TDDevProcessSupport
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) backup ]