as yet unclassified
findReferences: findTokens
  "find references <variableOrGlobalNameOrPathRef>"

  | variableOrGlobalNameOrPathRef methodRefs pattern |
  variableOrGlobalNameOrPathRef := findTokens at: 2.
  methodRefs := (variableOrGlobalNameOrPathRef beginsWith: '@')
    ifTrue: [ 
      | literal |
      literal := self resolveAtPathReference: variableOrGlobalNameOrPathRef.
      pattern := nil.
      TDMethodDefinition rawLiteralReference: literal in: nil ]
    ifFalse: [ 
      pattern := variableOrGlobalNameOrPathRef.
      TDMethodDefinition
        rawReferencesTo: variableOrGlobalNameOrPathRef
        isMeta: false
        in: nil ].
  ^ self methodDefinitionsFor: methodRefs messagePattern: pattern isRegex: false