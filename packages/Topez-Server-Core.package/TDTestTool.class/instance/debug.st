as yet unclassified
debug
  "ts debug <test-spec>
     <test-spec> class>>sector or errors or failures"

  | testSpec cls selector |
  (#('errors' 'failures' 'unexpectedPassed') includes: (tokens at: 2))
    ifTrue: [ ^ self debugTestSet: (tokens at: 2) ].
  testSpec := (tokens at: 2) findTokens: '>>'.
  cls := Smalltalk at: (testSpec at: 1) asSymbol.
  selector := testSpec at: 2.
  (selector at: 1) = $#
    ifTrue: [ selector := selector copyFrom: 2 to: selector size ].
  ^ cls debug: selector asSymbol