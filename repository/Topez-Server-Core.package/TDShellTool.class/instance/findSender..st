as yet unclassified
findSender: findTokens
  "find sender [#]<selector>"

  | selector methodRefs |
  selector := self resolveSelector: (findTokens at: 2).
  methodRefs := (Smalltalk systemNavigation newSendersOf: selector asSymbol)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false