find
findundeclared
  "
  find undeclared
"

  self getSubcommandOptsMixedLongShort: {}.
  ^ self filterSelectList: self undefinedSymbolMethodDefinitions