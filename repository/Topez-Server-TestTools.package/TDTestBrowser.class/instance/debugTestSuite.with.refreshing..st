private
debugTestSuite: aTestSuite with: aTestResult refreshing: refreshBlock
  | testBlock |
  testBlock := [ 
  refreshBlock value.
  aTestSuite debug: aTestResult.
  refreshBlock value ].
  self class useUpdateThread
    ifTrue: [ self runUpdateThreadFor: testBlock refreshing: refreshBlock ]
    ifFalse: [ testBlock value ].
  self inform: 'finished with tests'