smalltalk api
pfStatus: aProfMon
  aProfMon == nil
    ifTrue: [ ^ 'not started' ].
  aProfMon endTime == nil
    ifTrue: [ ^ 'started at ' , aProfMon startTime printString ].
  aProfMon results == nil
    ifTrue: [ ^ 'results not gathered, ended at ' , aProfMon endTime printString ].
  ^ 'results available, ended at ' , aProfMon endTime printString