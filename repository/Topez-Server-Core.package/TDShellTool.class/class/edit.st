commands
edit
  <topezCommand: 'edit' manPage: #'editManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performCommand: topez
    objIn: objIn
    commandOptions:
      {#('help' $h #'none').
      #('builderAspect' nil #'required').
      #('editorAspect' nil #'required').
      #('inspect' $i #'none').
      #('navigate' $n #'none').
      #('print' $p #'none')}
    todeCommand: command ]