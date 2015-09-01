commands
windows
  "self install"

  <topezCommand: 'windows' manPage: #'windowsManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions: {#('help' $h #'none')}
    todeCommand: command ]