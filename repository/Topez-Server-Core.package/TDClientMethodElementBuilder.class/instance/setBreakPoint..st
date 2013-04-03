as yet unclassified
setBreakPoint: selectionInterval
  "CMD-k - set breakpoint"

  | stepPoint |
  stepPoint := self findStepPoint: selectionInterval.
  self method setBreakAtStepPoint: stepPoint.
  ^ true