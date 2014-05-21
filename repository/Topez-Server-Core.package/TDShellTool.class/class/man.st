commands
man
  <topezCommand: 'man' manPage: #'manManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performCommand: topez
    objIn: objIn
    commandOptions:
      {#('all' nil #'none').
      #('class' nil #'none').
      #('exact' nil #'none').
      #('find' nil #'none').
      #('help' $h #'none')}
    todeCommand: command ]