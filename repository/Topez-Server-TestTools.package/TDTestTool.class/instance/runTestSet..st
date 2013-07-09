as yet unclassified
runTestSet: subPath
  "ts run [errors|failures|passed|expectedDefects|unexpectedPassed|<test-spec>]"

  | tests |
  subPath = 'errors'
    ifTrue: [ self runTestSetErrors ].
  tests := (self topez lookup: self defaultHomeResultsPath , '/' , subPath)
    dotSelfObject.
  tests copy do: [ :testCase | testCase debug ].
  ^ 'all test cases in ' , subPath printString , ' pass'