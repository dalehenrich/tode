commands
editInspect
  <topezCommand: 'inspect' manPage: #'editInspectManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performCommand: topez
    withSelector: #'editInspect'
    objIn: objIn
    commandOptions: {#('help' $h #'none')}
    todeCommand: command ]