as yet unclassified
profMon: aProfMon
  | endTime startTime |
  endTime := aProfMon endTime.
  startTime := aProfMon startTime.
  (aProfMon respondsTo: #'sampling')
    ifTrue: [ sampling := aProfMon perform: #'sampling' ].
  self profMonResults: aProfMon results.
  endTime >= startTime
    ifTrue: [ elapsedTime := endTime - startTime ]
    ifFalse: [ elapsedTime := endTime + (16rffffffff - startTime) ]