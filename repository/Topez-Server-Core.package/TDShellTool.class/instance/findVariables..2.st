find
findVariables
  "
  browse|find variables --class=<class-name> <variable-name>...
"

  | cls list |
  list := Set new.
  subOptions
    at: 'class'
    ifPresent: [ :className | cls := self resolveClassReference: className ].
  subArguments
    do: [ :arg | list addAll: (self findReferences: arg asSymbol inClass: cls) ].
  ^ list