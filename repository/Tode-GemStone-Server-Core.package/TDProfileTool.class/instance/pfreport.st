as yet unclassified
pfreport
  "pf report"

  | profMon tally report |
  self pfstop.
  tally := 100.
  tokens size > 1
    ifTrue: [ tally := (tokens at: 2) asNumber ].
  profMon := self profMonitor.
  profMon results ifNil: [ profMon gatherResults ].
  report := profMon reportDownTo: tally.
  report editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ profMon