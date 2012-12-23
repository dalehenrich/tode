as yet unclassified
runSuite: suiteName tests: subPath
  | testsPath testsNode testNode suite |
  testsPath := (tokens size > 1
    ifTrue: [ tokens at: 2 ]
    ifFalse: [ self defaultHomeTestPath ]) , subPath.
  testsNode := self topez lookup: testsPath.
  testNode := self topez lookup: self defaultHomeTestPath.
  suite := TestSuite named: suiteName.
  testsNode basicContents do: [ :test | suite addTest: test ].
  ^ self run: suite testNode: testNode