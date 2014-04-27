commands
abort
  <topezCommand: 'abort' manPage: #'abortManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performCommand: topez
    objIn: objIn
    commandOptions: {#('help' $h #'none')}
    todeCommand: command ]