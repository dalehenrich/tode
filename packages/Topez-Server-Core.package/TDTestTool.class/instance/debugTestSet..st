as yet unclassified
debugTestSet: subPath
  "'errors' 'failures'  'unexpectedPassed'"

  | tests map passed |
  passed := (self topez lookup: self defaultHomeResultsPath) dotSelfObject passed.
  map := Dictionary new.
  #('errors' 'failures' 'passed' 'expectedDefects' 'unexpectedPassed')
    do: [ :aspect | map at: aspect put: (self topez lookup: self defaultHomeResultsPath , '/' , aspect) dotSelfObject ].
  tests := map at: subPath.
  tests copy
    do: [ :testCase | 
      testCase debug.
      tests remove: testCase.
      passed add: testCase ].
  ^ 'all test cases in ' , subPath printString , ' pass'