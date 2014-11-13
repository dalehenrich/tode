commands
mount
  <topezCommand: 'mount' manPage: #'mountManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'none').
      #('stoneRoot' nil #'none').
      #('todeRoot' nil #'none').
      #('asLeafNode' nil #'none')}
    todeCommand: command ]