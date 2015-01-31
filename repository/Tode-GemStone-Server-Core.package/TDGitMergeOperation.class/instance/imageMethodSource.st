smalltalk source
imageMethodSource
  | beh src sel cat |
  self methodClass isNil
    ifTrue: [ ^ '' ].
  beh := self methodBehavior.
  sel := self methodSelector.
  src := (beh compiledMethodAt: sel ifAbsent: [ ^ '' ]) sourceString.
  cat := beh categoryOfSelector: sel.
  ^ cat , String lf , src