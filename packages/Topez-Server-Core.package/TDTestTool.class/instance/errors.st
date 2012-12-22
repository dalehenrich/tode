as yet unclassified
errors
  "ts errors [<test-path>]"

  | testsPath testsNode testNode suite |
  testsPath := (tokens size > 1
    ifTrue: [ tokens at: 2 ]
    ifFalse: [ self defaultHomeTestPath ]) , '/results/errors'.
  testsNode := self topez lookup: testsPath.
  testNode := self topez lookup: self defaultHomeTestPath.
  suite := TestSuite named: 'errors'.
  testsNode basicContents do: [ :test | suite addTest: test ].
  ^ self run: suite testNode: testNode