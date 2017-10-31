commands
eval
  <topezCommand: 'eval' manPage: #'evalManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'none').
      #('env' nil #'required')}
    todeCommand: command ]