commands
mount
  <topezCommand: 'mount' manPage: #'mountManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'none').
      #('todeHome' nil #'none').
      #('asLeafNode' nil #'none')}
    todeCommand: command ]