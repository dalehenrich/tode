browse
browseundeclared
  "
  browse undeclared
"

  | block |
  self getSubcommandOptsMixedLongShort: {}.
  block := [ 
  | list |
  list := self undefinedSymbolMethodDefinitions.
  list := self filterBrowseList: list ].
  ^ self browseMethodsBlock: block label: 'Undeclared symbol references'