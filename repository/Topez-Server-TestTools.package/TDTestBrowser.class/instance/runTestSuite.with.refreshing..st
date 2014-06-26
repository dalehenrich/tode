private
runTestSuite: aTestSuite with: aTestResult refreshing: refreshBlock
  | notDone delay |
  notDone := true.
  testProcess := [ 
  [ 
  | results |
  refreshBlock value.
  aTestSuite run: aTestResult ]
    ensure: [ 
      notDone := false.
      testProcess := nil.
      delay ifNotNil: [ delay signal ] ] ]
    fork.
  [ testProcess notNil and: [ notDone ] ]
    whileTrue: [ 
      refreshBlock value.
      delay := Delay forSeconds: 5.
      delay wait.
      delay := nil ]