as yet unclassified
pfstop
  "pf stop"

  | profMon |
  profMon := self profMonitor.
  profMon endTime ~~ nil
    ifTrue: [ ^ self ].
  profMon stopMonitoring