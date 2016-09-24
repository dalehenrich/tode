find
findSender: selectorToken username: username
  "find [--scriptPath=<tode-path>] sender [#]<selector>"

  | selector methodRefs |
  username ifNil: [ ^ self findSender: selectorToken ].
  selector := self resolveSelector: selectorToken.
  methodRefs := (((TDBehaviorReferenceDefinition classOrganizerFor: username)
    sendersOf: selector) at: 1)
    collect: [ :gsNMethod | self methodReferenceForGsNMethod: gsNMethod username: username ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false
    username: username