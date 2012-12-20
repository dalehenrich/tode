as yet unclassified
breakClear: breakTokens
    "clear @<step-point> <class>[ class]>><selector>"

    | stepPoint meth |
    stepPoint := ((breakTokens at: 2) copyFrom: 2 to: (breakTokens at: 1) size) asNumber.
    meth := self lookupMethodIn: (breakTokens copyFrom: 3 to: tokens size).
    meth clearBreakAtStepPoint: stepPoint