browse
browselist
  "
  browse list <definitionList-path>...
"

  | block label |
  self getSubcommandOptsMixedLongShort: {}.
  label := 'List: '.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  block := [ 
  | list |
  list := Set new.
  subArguments do: [ :arg | list addAll: (topez lookup: arg) dotSelfObject ].
  list := self filterBrowseList: list ].
  ^ self browseMethodsBlock: block label: label