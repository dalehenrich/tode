find
findreferences
  "
  find references [--class=<class-name>] <global-name>...
  find references [--class=<class-name>] --literal <literal>... 
"

  self
    getSubcommandOptsMixedLongShort:
      {#('class' nil #'required').
      #('literal' nil #'none')}.
  ^ self findReferences