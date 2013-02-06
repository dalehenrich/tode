as yet unclassified
cmdKeyAction: cmdKey sourceElement: clientSourceElement selectionInterval: selectionInterval
  "CMD-b - set breakpoint"

  | stepPoint |
  cmdKey = $b
    ifFalse: [ ^ false ].
  stepPoint := self findStepPoint: selectionInterval.
  self method setBreakAtStepPoint: stepPoint.
  ^ true