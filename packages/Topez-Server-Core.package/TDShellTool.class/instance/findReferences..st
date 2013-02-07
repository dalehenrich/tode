as yet unclassified
findReferences: findTokens
  "find method <selector>"

  | variableOrClassName |
  variableOrClassName := findTokens at: 2.
  ^ TDMethodDefinition referencesTo: variableOrClassName isMeta: false in: nil