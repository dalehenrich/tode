initialization
initResults
  self currentTestCase: 'ready'.
  testResults := TestResult new.
  run := Set new.
  expectedPasses := Set new.
  expectedDefects := Set new.
  unexpectedFailures := Set new.
  unexpectedErrors := Set new.
  unexpectedPasses := Set new