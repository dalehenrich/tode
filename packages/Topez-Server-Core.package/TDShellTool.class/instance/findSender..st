as yet unclassified
findSender: findTokens
  "find sender <selector>"

  | selector |
  selector := findTokens at: 2.
  ^ (Smalltalk systemNavigation sendersOf: selector asSymbol)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ]