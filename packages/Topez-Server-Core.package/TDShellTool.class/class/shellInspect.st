as yet unclassified
shellInspect
  <topezCommand: 'inspect' manPage: #'shellInspectManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) shellInspect ]