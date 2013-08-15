as yet unclassified
findRegex: regexExpression
  | parser |
  parser := RxParser safelyParse: regexExpression.
  parser ifNil: [ ^ nil ].
  ^ RxParser preferredMatcherClass for: parser ignoreCase: true