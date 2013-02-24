as yet unclassified
findSender: findTokens
  "find sender <selector>"

  | selector |
  selector := findTokens at: 2.
  ^ (Smalltalk systemNavigation newSendersOf: selector asSymbol)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ]