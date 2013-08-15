as yet unclassified
findReferences: variableOrGlobalNameOrPathRef
  "find references <variableOrGlobalNameOrPathRef>"

  | methodRefs pattern |
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
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: pattern
    isRegex: false