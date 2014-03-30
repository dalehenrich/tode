as yet unclassified
find
  <topezCommand: 'find' manPage: #'findManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions: {#('scriptPath' nil #'optional')}
    todeCommand: command ]