commands
ds
  <topezCommand: 'ds' manPage: #'dsManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'none').
      #('level' nil #'required')}
    todeCommand: command ]