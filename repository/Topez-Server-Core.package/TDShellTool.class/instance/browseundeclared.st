browse
browseundeclared
  "
  browse undeclared
"

  | map list |
  self getSubcommandOptsMixedLongShort: {#('list' nil #'none')}.
  list := self undefinedSymbolMethodDefinitions.
  list := self filterBrowseList: list.
  ^ self browseMethods: list label: 'Undeclared symbol references'