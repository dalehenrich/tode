private
runUpdateThreadFor: testBlock refreshing: refreshBlock
  | notDone delay |
  notDone := true.
  testProcess := [ 
  testBlock
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
      delay := nil ]