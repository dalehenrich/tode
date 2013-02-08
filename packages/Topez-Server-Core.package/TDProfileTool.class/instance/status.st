as yet unclassified
status
  "pf status"

  | profMon |
  profMon := self profMonitor.
  profMon == nil
    ifTrue: [ ^ 'not started' asText ].
  profMon endTime == nil
    ifTrue: [ ^ ('started at ' , profMon startTime printString) asText ].
  profMon results == nil
    ifTrue: [ ^ ('results not gathered, ended at ' , profMon endTime printString) asText ].
  ^ ('results available, ended at ' , profMon endTime printString) asText