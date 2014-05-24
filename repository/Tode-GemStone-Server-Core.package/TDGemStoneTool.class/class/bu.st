bu
bu
  <topezCommand: 'bu' manPage: #'buManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'none').
      #('dir' nil #'required')}
    todeCommand: command ]