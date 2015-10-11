find
findmethod
  "
  find method <selector> 
  find method --spec <method-spec> 
  find method --regex <selector-pattern> 
"

  self
    getSubcommandOptsMixedLongShort:
      {#('regex' $r #'none').
      #('spec' nil #'none')}.
  ^ self findMethod