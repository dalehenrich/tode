commands
gemtool
  <topezCommand: 'gemtool' manPage: #'gemtoolManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions: {#('help' $h #'none')}
    todeCommand: command ]