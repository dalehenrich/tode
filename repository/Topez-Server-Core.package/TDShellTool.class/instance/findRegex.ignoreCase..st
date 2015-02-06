as yet unclassified
findRegex: regexExpression ignoreCase: ignoreCase
  | parser |
  parser := RxParser safelyParse: regexExpression.
  parser ifNil: [ ^ nil ].
  ^ RxParser preferredMatcherClass for: parser ignoreCase: ignoreCase