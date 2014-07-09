initialization
resetResultsBeforeRun: testCases
  testResults := TestResult new.
  run removeAllPresent: testCases.
  expectedPasses removeAllPresent: testCases.
  expectedDefects removeAllPresent: testCases.
  unexpectedFailures removeAllPresent: testCases.
  unexpectedErrors removeAllPresent: testCases.
  unexpectedPasses removeAllPresent: testCases