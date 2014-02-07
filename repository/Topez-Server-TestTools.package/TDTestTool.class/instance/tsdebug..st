as yet unclassified
tsdebug: arg
  | testSpec cls selector meth |
  testSpec := arg findTokens: '>>'.
  cls := Smalltalk at: (testSpec at: 1) asSymbol.
  selector := (testSpec at: 2) asSymbol.
  (selector at: 1) = $#
    ifTrue: [ selector := selector copyFrom: 2 to: selector size ].
  meth := cls compiledMethodAt: selector.
  meth setBreakAtStepPoint: 1.
  ^ cls debug: selector