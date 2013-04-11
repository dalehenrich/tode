as yet unclassified
report
  "pf report"

  | profMon tally report |
  self stop.
  tally := 100.
  tokens size > 1
    ifTrue: [ tally := (tokens at: 2) asNumber ].
  profMon := self profMonitor.
  profMon results ifNil: [ profMon gatherResults ].
  report := profMon reportDownTo: tally.
  report edit: topez aspect: #'edit'.
  ^ profMon