as yet unclassified
findRegex: findTokens
  "xxx <pattern>"

  | parser |
  parser := RxParser new parse: (findTokens at: 2).
  ^ RxParser preferredMatcherClass for: parser ignoreCase: true