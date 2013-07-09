as yet unclassified
debug
  "ts debug <test-spec>"

  | arg testSpec cls selector meth |
  arg := tokens at: 2.
  testSpec := arg findTokens: '>>'.
  cls := Smalltalk at: (testSpec at: 1) asSymbol.
  selector := (testSpec at: 2) asSymbol.
  (selector at: 1) = $#
    ifTrue: [ selector := selector copyFrom: 2 to: selector size ].
  meth := cls compiledMethod at: selector.
  meth setBreakAtStepPoint: 1.
  ^ cls debug: selector