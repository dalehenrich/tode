as yet unclassified
findReferences: findTokens
  "find method <selector>"

  | variableOrClassName |
  variableOrClassName := findTokens at: 2.
  ^ TDMethodDefinition rawReferencesTo: variableOrClassName isMeta: false in: nil