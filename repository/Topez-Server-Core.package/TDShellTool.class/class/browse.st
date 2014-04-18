as yet unclassified
browse
  "self install"

  <topezCommand: 'browse' manPage: #'browseManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'optional').
      #('scriptPath' nil #'optional').
      #('select' nil #'required')}
    todeCommand: command ]