find
findmethod
  "
  find method <selector> 
  find method --spec <method-spec> 
  find method --regex <selector-pattern> 
"

  | list |
  self
    getSubcommandOptsMixedLongShort:
      {#('regex' $r #'none').
      #('spec' nil #'none')}.
  list := Set new.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'spec'
        ifPresent: [ :ignored | list addAll: (self findMethodSpec: arg) ]
        ifAbsent: [ 
          subOptions
            at: 'regex'
            ifPresent: [ :ignored | list addAll: (self findRegexMethod: arg) ]
            ifAbsent: [ list addAll: (self findMethod: arg) ] ] ].
  ^ list