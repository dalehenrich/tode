browse
browselist
  "
  browse list <definitionList-path>...
"

  | block label |
  self getSubcommandOptsMixedLongShort: {}.
  block := [ 
  | list |
  list := Set new.
  label := ''.
  subArguments
    do: [ :arg | 
      list addAll: (topez lookup: arg) dotSelfObject.
      label := label , ' ' , arg ].
  list := self filterBrowseList: list ].
  ^ self browseMethodsBlock: block label: 'List: ' , label