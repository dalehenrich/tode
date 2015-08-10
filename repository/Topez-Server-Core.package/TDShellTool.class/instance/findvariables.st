find
findvariables
  "
  find variables --class=<class-name> <variable-name>...
"

  | cls list |
  self getSubcommandOptsMixedLongShort: {#('class' nil #'required')}.
  list := Set new.
  subOptions
    at: 'class'
    ifPresent: [ :className | cls := self resolveClassReference: className ].
  subArguments
    do: [ :arg | list addAll: (self findReferences: arg asSymbol inClass: cls) ].
  ^ list