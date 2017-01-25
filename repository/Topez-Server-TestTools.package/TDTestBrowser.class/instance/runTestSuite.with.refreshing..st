private
runTestSuite: aTestSuite with: aTestResult refreshing: refreshBlock
  | testBlock |
  self resetRefreshTimer.
  testBlock := [ aTestSuite tests do: [ :testCase | self doLogging
        ifTrue: [ Transcript
            cr;
            show: testCase printString ].
      self currentTestCase: testCase.
      refreshBlock value.
      testCase run: aTestResult ] ].
  testBlock value.
  self inform: 'finished with tests'