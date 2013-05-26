as yet unclassified
findMethod: findTokens
  "find method [#]<selector>"

  | selector methodRefs |
  selector := self resolveSelector: (findTokens at: 2).
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | selector = m selector asString ].
  ^ self
    methodDefinitionsFor: methodRefs
    messagePattern: selector
    isRegex: false