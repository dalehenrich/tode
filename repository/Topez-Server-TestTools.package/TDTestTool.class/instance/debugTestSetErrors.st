as yet unclassified
debugTestSetErrors
  "turns out that when running through errors, you probably don't want to see assertion failures"

  | errors passed failures testResult |
  testResult := (self topez lookup: self defaultHomeResultsPath) dotSelfObject.
  errors := testResult errors.
  passed := testResult passed.
  failures := testResult failures.
  errors copy
    do: [ :testCase | 
      [ 
      testCase runCase.
      passed add: testCase.
      errors remove: testCase ]
        sunitOn: TestResult failure
        do: [ :signal | 
          failures add: testCase.
          errors remove: testCase ] ].
  ^ 'no more ''errors'' in test cases '