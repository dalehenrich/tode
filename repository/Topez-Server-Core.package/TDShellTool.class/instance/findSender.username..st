find
findSender: selectorToken username: username
  "find [--scriptPath=<tode-path>] sender [#]<selector>"

  | selector methodRefs |
  username ifNil: [ ^ self findSender: selectorToken ].
  selector := self resolveSelector: selectorToken.
  methodRefs := (((TDBehaviorReferenceDefinition classOrganizerFor: username)
    sendersOf: selector) at: 1)
    collect: [ :gsNMethod | 
      MethodReference new
        setStandardClass: gsNMethod inClass
        methodSymbol: gsNMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false
    username: username