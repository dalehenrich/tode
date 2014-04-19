browse
browsevariables
  "
  browse variables --class=<class-name> <variable-name>...
"

  | list cls pattern |
  self getSubcommandOptsMixedLongShort: {#('class' nil #'required')}.
  list := Set new.
  pattern := ''.
  subOptions
    at: 'class'
    ifPresent: [ :className | cls := self resolveClassReference: className ].
  subArguments
    do: [ :arg | 
      list addAll: (self findReferences: arg asSymbol inClass: cls).
      pattern := pattern , ' ' , arg ].
  list := self filterBrowseList: list.
  ^ self browseMethods: list label: 'Variable references to:' , pattern