private
runTestSuite: aTestSuite with: aTestResult refreshing: refreshBlock
  | testBlock |
  self resetRefreshTimer.
  testBlock := [ aTestSuite tests do: [ :each | self currentTestCase: each.
      refreshBlock value.
      each run: aTestResult ] ].
  testBlock value.
  self inform: 'finished with tests'