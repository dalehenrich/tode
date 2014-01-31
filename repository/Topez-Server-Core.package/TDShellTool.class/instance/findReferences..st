as yet unclassified
findReferences: variableOrGlobalNameOrPathRef
  "find [--scriptPath=<tode-path>] references <variableOrGlobalNameOrPathRef>"

  | methodRefs pattern |
  self options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | 
      ^ self
        findReferences: variableOrGlobalNameOrPathRef
        searchScriptRoot: scriptPath ].
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