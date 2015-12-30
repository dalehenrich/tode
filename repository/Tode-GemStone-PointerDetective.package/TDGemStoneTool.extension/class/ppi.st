*tode-gemstone-pointerdetective
ppi
  "self install"

  <topezCommand: 'ppi' manPage: #'ppiManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions: {#('help' $h #'none')}
    todeCommand: command ]