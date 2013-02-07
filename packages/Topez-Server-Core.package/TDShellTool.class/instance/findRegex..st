as yet unclassified
findRegex: findTokens
  "xxx <pattern>"

  | parser |
  parser := RxParser new safelyParse: (findTokens at: 2).
  parser ifNil: [ ^ nil ].
  ^ RxParser preferredMatcherClass for: parser ignoreCase: true