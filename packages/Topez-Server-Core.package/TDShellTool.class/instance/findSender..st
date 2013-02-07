as yet unclassified
findSender: findTokens
  "find sender <selector>"

  | selector |
  selector := findTokens at: 2.
  ^ (SystemNavigation default sendersOf: selector asSymbol)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ]