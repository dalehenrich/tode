private
debugTestSuite: aTestSuite with: aTestResult refreshing: refreshBlock
  | testBlock |
  self resetRefreshTimer.
  testBlock := [ aTestSuite tests do: [ :each | self currentTestCase: each.
      refreshBlock value.
      each debug: aTestResult ] ].
  testBlock value.
  self inform: 'finished with tests'