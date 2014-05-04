commands
edit
  <topezCommand: 'edit' manPage: #'editManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'none').
      #('aspect' nil #'required').
      #('inspect' $i #'none').
      #('view' $v #'none').
      #('print' $p #'none')}
    todeCommand: command ]