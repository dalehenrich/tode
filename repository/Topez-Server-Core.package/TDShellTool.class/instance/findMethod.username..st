find
findMethod: selectorToken username: username
  "find method [#]<selector>"

  | selector methodRefs |
  username ifNil: [ ^ self findMethod: selectorToken ].
  selector := (self resolveSelector: selectorToken) asSymbol.
  methodRefs := ((TDBehaviorReferenceDefinition classOrganizerFor: username)
    implementorsOf: selector)
    collect: [ :gsNMethod | 
      | methodRef |
      methodRef := MethodReference new
        setStandardClass: gsNMethod inClass
        methodSymbol: gsNMethod selector.
      username
        ifNotNil: [ 
          | symDictAr |
          symDictAr := (AllUsers
            userWithId: username
            ifAbsent: [ System myUserProfile ]) symbolList
            dictionariesAndSymbolsOf: gsNMethod inClass.
          methodRef symbolDictionary: ((symDictAr at: 1) at: 1) ].
      methodRef ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false
    username: username