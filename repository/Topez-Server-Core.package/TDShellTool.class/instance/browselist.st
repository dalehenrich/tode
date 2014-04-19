browse
browselist
  "
  browse list <definitionList-path>...
"

  | list label |
  self getSubcommandOptsMixedLongShort: {}.
  list := Set new.
  label := ''.
  subArguments
    do: [ :arg | 
      list addAll: (topez lookup: arg) dotSelfObject.
      label := label , ' ' , arg ].
  list := self filterBrowseList: list.
  ^ self browseMethods: list label: 'List: ' , label