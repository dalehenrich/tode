commands
find
  <topezCommand: 'find' manPage: #'findManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'none').
      #('scriptPath' nil #'optional')}
    todeCommand: command ]