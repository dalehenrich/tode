as yet unclassified
findSourceExact: sourceString
  "find [--scriptPath=<tode-path>] source <regex-pattern>"

  | methodRefs |
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | m sourceString includesSubString: sourceString ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: sourceString
    isRegex: false