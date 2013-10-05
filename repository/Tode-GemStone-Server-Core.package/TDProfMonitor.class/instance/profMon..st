as yet unclassified
profMon: aProfMon
  | endTime startTime |
  endTime := aProfMon endTime.
  startTime := aProfMon startTime.
  self profMonResults: aProfMon results.
  endTime >= startTime
    ifTrue: [ elapsedTime := endTime - startTime ]
    ifFalse: [ elapsedTime := endTime + (16rffffffff - startTime) ]