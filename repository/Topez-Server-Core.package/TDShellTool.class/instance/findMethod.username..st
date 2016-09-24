find
findMethod: selectorToken username: username
  "find method [#]<selector>"

  | selector methodRefs |
  username ifNil: [ ^ self findMethod: selectorToken ].
  selector := (self resolveSelector: selectorToken) asSymbol.
  methodRefs := ((TDBehaviorReferenceDefinition classOrganizerFor: username)
    implementorsOf: selector)
    collect: [ :gsNMethod | 
      MethodReference new
        setStandardClass: gsNMethod inClass
        methodSymbol: gsNMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false
    username: username