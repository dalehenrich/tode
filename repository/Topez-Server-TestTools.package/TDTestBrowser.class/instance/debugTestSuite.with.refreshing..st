private
debugTestSuite: aTestSuite with: aTestResult refreshing: refreshBlock
  | testBlock |
  self resetRefreshTimer.
  testBlock := [ aTestSuite tests do: [ :testCase | self doLogging
        ifTrue: [ Transcript
            cr;
            show: testCase printString ].
      self currentTestCase: testCase.
      refreshBlock value.
      testCase debug: aTestResult ] ].
  testBlock value.
  self inform: 'finished with tests'