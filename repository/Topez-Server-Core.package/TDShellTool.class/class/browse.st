browse
browse
  "self install"

  <topezCommand: 'browse' manPage: #'browseManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'none').
      #('scriptPath' nil #'optional').
      #('select' nil #'required').
      #('staticList' nil #'none')}
    todeCommand: command ]