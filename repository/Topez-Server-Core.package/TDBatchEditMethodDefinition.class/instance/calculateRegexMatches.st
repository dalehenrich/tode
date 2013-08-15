as yet unclassified
calculateRegexMatches
  | matches parser matcher |
  matches := #().
  self messagePatternIsRegex
    ifFalse: [ ^ matches ].
  parser := RxParser safelyParse: self messagePattern.
  parser ifNil: [ ^ matches ].
  matcher := RxParser preferredMatcherClass for: parser ignoreCase: false.
  matcher ifNil: [ ^ matches ].
  ^ matcher matchingRangesIn: self formatSource