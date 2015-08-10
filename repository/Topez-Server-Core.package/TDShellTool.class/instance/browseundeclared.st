browse
browseundeclared
  "
  browse undeclared
"

  | block |
  self getSubcommandOptsMixedLongShort: {}.
  block := [ self filterSelectList: self undefinedSymbolMethodDefinitions ].
  ^ self browseMethodsBlock: block label: 'Undeclared symbol references'