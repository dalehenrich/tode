as yet unclassified
findSender: selectorToken
  "find sender [#]<selector>"

  | selector methodRefs |
  selector := self resolveSelector: selectorToken.
  methodRefs := (Smalltalk systemNavigation newSendersOf: selector asSymbol)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false