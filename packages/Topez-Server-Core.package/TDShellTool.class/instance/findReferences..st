as yet unclassified
findReferences: findTokens
  "find method <selector>"

  | variableOrClassName |
  variableOrClassName := findTokens at: 2.
  ^ TDShellTool referencesTo: variableOrClassName isMeta: false in: nil