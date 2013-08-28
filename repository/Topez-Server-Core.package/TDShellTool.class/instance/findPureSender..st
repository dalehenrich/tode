as yet unclassified
findPureSender: selectorToken
  "find psender [#]<selector>"

  | selector methodRefs |
  selector := self resolveSelector: selectorToken.
  methodRefs := ((Smalltalk systemNavigation classOrganizer
    sendersOf: selector asSymbol) at: 1)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: selector
    isRegex: false