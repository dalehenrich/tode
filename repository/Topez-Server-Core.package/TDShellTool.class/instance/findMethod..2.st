find
findMethod
  "
  browse|find method <selector> 
  browse|find method --spec <method-spec> 
  browse|find method --regex <selector-pattern> 
"

  | list |
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