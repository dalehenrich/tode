as yet unclassified
breakSet: breakTokens
    "@<step-point> <class>[ class]>><selector>"

    | stepPoint meth |
    stepPoint := ((breakTokens at: 1) copyFrom: 2 to: (breakTokens at: 1) size) asNumber.
    meth := self lookupMethodIn: (breakTokens copyFrom: 2 to: breakTokens size).
    meth setBreakAtStepPoint: stepPoint.
    ^ meth _allBreakpoints