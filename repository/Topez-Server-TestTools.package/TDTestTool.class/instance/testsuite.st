as yet unclassified
testsuite
  "test [--batch] suite <sunit-suite-file>
        suite @<sunit-suite-path>
  "

  | suitePath suite node testNode |
  self getSubcommandOptsMixedLongShort: {}.
  suitePath := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <sunit-suite-file> | @<sunit-suite-path>. See `man test` for details.' ].
  suite := (suitePath beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: suitePath ]
    ifFalse: [ 
      | suiteNode |
      suiteNode := self topez lookup: suitePath.
      suiteNode evaluateInContext: objIn ].
  ^ self doTestFor: suite