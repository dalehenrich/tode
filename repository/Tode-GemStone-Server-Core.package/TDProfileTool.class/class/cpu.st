cpu
cpu
  "self install"

  <topezCommand: 'cpu' manPage: #'cpuManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions: {#('help' $h #'none')}
    todeCommand: command ]