as yet unclassified
export
  <topezCommand: 'export' manPage: #'exportManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (TDDevProcessSupport
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) export ]