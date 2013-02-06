as yet unclassified
cmdKeyAction: cmdKey sourceElement: clientSourceElement selectionInterval: selectionInterval
  "set breakpoint"

  | stepPoint |
  cmdKey = $b
    ifFalse: [ ^ false ].
  stepPoint := self findStepPoint: selectionInterval.
  self object setBreakAtStepPoint: stepPoint.
  ^ true