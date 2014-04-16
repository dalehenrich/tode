browse
browselist
  "
  browse list <definitionList-path>...
"

  | list label |
  list := Set new.
  label := ''.
  subArguments
    do: [ :arg | 
      list addAll: (topez lookup: arg) dotSelfObject.
      label := label , ' ' , arg ].
  ^ self browseMethods: list label: 'List: ' , label