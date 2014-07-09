initialization
applyTestResults
  run
    addAll: testResults passed;
    addAll: testResults failures;
    addAll: testResults errors.
  expectedPasses addAll: testResults expectedPasses.
  expectedDefects addAll: testResults expectedDefects.
  unexpectedFailures addAll: testResults unexpectedFailures.
  unexpectedErrors addAll: testResults unexpectedErrors.
  unexpectedPasses addAll: testResults unexpectedPasses