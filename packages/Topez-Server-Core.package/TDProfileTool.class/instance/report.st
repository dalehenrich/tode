as yet unclassified
report
  "pf report"

  | profMon tally report result |
  self stop.
  tally := 100.
  tokens size > 1
    ifTrue: [ tally := (tokens at: 2) asNumber ].
  profMon := self profMonitor.
  profMon results ifNil: [ profMon gatherResults ].
  report := profMon reportDownTo: tally.
  result := TDCommandResult new
    resultObject: profMon;
    yourself.
  report edit: topez aspect: #'browse'.
  ^ result