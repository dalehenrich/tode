find
findMethod: selectorToken username: username
  "find method [#]<selector>"

  | selector methodRefs |
  username ifNil: [ ^ self findMethod: selectorToken ].
  selector := (self resolveSelector: selectorToken) asSymbol.
  methodRefs := (self classOrganizer implementorsOf: selector)
    collect: [ :gsNMethod | self methodReferenceForGsNMethod: gsNMethod username: username ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false
    username: username