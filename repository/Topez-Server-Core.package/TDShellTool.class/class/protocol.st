as yet unclassified
protocol
  <topezCommand: 'protocol' manPage: #'protocolManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  self
    performSubCommand: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId ]