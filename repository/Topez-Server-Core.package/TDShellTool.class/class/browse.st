as yet unclassified
browse
  "self install"

  <topezCommand: 'browse' manPage: #'browseManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions: {#('scriptPath' nil #'optional')}
    todeCommand: command ]