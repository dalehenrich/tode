private
debugTestSuite: aTestSuite with: aTestResult refreshing: refreshBlock
  | notDone delay |
  notDone := true.
  testProcess := [ 
  [ 
  | results |
  refreshBlock value.
  aTestSuite debug: aTestResult ]
    ensure: [ 
      notDone := false.
      testProcess := nil.
      delay
        ifNotNil: [ 
          delay inProgress
            ifTrue: [ delay signal ] ] ] ]
    forkAt: Processor activePriority - 1.
  [ testProcess notNil and: [ notDone ] ]
    whileTrue: [ 
      refreshBlock value.
      delay := Delay forSeconds: 5.
      delay wait.
      delay := nil ].
  self inform: 'finished with tests'