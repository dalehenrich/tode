as yet unclassified
configs
  <topezCommand: 'configs' manPage: #'configsManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) configs ]