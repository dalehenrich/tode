as yet unclassified
xxx
  "self install"

  <topezCommand: 'xxx' manPage: #'xxxManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions: {#('a' nil #'none')}
    todeCommand: command ]