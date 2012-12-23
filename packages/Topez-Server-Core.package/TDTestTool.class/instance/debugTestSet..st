as yet unclassified
debugTestSet: subPath
  | testsPath testSetNode |
  testsPath := self defaultHomeResultsPath , '/' , subPath.
  testSetNode := self topez lookup: testsPath.
  testSetNode dotSelfObject do: [ :testCase | testCase debug ].
  ^ 'all test cases in ' , subPath printString , ' pass'