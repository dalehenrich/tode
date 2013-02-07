as yet unclassified
findSender: findTokens
  "find sender <selector>"

  | selector |
  selector := findTokens at: 2.
  ^ (SystemNavigation default sendersOf: selector)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ]