as yet unclassified
breakSet: meth step: stepPoint
  self setRemoteBreakpoint: meth step: stepPoint.
  meth setBreakAtStepPoint: stepPoint.
  ^ meth _allBreakpoints