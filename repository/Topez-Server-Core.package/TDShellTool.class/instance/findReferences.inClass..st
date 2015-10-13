find
findReferences: variableOrGlobalNameOrPathRef inClass: clsOrNil
  | methodRefs pattern |
  methodRefs := (variableOrGlobalNameOrPathRef beginsWith: '@')
    ifTrue: [ 
      | literal |
      literal := self resolveAtPathReference: variableOrGlobalNameOrPathRef.
      pattern := nil.
      TDMethodDefinition rawLiteralReference: literal in: clsOrNil ]
    ifFalse: [ 
      pattern := variableOrGlobalNameOrPathRef.
      TDMethodDefinition
        rawReferencesTo: variableOrGlobalNameOrPathRef
        isMeta: false
        in: clsOrNil ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: pattern
    isRegex: false