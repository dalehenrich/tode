as yet unclassified
findReferences: findTokens
  "find method <selector>"

  | variableOrClassName methodRefs |
  variableOrClassName := findTokens at: 2.
  methodRefs := TDMethodDefinition
    rawReferencesTo: variableOrClassName
    isMeta: false
    in: nil.
  ^ self
    methodDefinitionsFor: methodRefs
    messagePattern: variableOrClassName
    isRegex: false