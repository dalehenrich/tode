find
findMethod: selectorToken
  "find method [#]<selector>"

  | selector methodRefs |
  selector := (self resolveSelector: selectorToken) asString.
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | selector = m selector asString ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false