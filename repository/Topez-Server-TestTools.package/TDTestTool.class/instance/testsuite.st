as yet unclassified
testsuite
  "test [--batch] suite <sunit-suite-file>
        suite @<sunit-suite-path>
  "

  | suitePath suite node testNode |
  self getSubcommandOptsMixedLongShort: {}.
  suitePath := subArguments at: 1.
  suite := (suitePath beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: suitePath ]
    ifFalse: [ 
      | suiteNode |
      suiteNode := self topez lookup: suitePath.
      suiteNode evaluateInContext: objIn ].
  ^ self doTestFor: suite