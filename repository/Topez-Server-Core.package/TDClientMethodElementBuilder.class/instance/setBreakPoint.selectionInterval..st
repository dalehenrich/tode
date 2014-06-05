as yet unclassified
setBreakPoint: sourceElement selectionInterval: selectionInterval
  "CMD-k - set breakpoint"

  | stepPoint |
  stepPoint := self findStepPoint: selectionInterval.
  (sourceElement topez toolInstanceFor: 'break')
    breakSet: self method
    step: stepPoint.
  ^ true