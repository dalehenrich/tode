find
findSourceExact: searchString ignoreCase: ignoreCase
  | methodRefs |
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | 
      (m sourceString
        findString: searchString
        startingAt: 1
        caseSensitive: ignoreCase not) > 0 ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: searchString
    isRegex: false