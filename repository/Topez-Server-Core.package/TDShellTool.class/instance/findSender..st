as yet unclassified
findSender: findTokens
  "find sender <selector>"

  | selector methodRefs |
  selector := findTokens at: 2.
  methodRefs := (Smalltalk systemNavigation newSendersOf: selector asSymbol)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs
    messagePattern: selector
    isRegex: false