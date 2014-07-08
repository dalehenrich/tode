as yet unclassified
testsuite
  "test suite <sunit-suite-file>
        suite @<sunit-suite-path>
  "

  | suitePath suite node testNode |
  suitePath := tokens at: 2.
  suite := (suitePath beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: suitePath ]
    ifFalse: [ 
      | suiteNode |
      suiteNode := self topez lookup: suitePath.
      suiteNode evaluateInContext: objIn ].
  ^ self browseTestSuite: suite