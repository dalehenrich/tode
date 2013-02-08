as yet unclassified
report
  "pf report"

  | profMon tally |
  self stop.
  tally := 100.
  tokens size > 1
    ifTrue: [ tally := (tokens at: 2) asNumber ].
  profMon := self profMonitor.
  profMon results ifNil: [ profMon gatherResults ].
  ^ (profMon reportDownTo: 2) edit: topez aspect: #'browse'