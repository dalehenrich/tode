as yet unclassified
findMethod: findTokens
  "find method <selector>"

  | selector |
  selector := findTokens at: 2.
  ^ Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | selector = m selector asString ]