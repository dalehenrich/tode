as yet unclassified
breakSet: breakTokens
  "db break @<step-point> <method-ref>"

  | stepPoint methodRef meth |
  stepPoint := ((breakTokens at: 1) copyFrom: 2 to: (breakTokens at: 1) size)
    asNumber.
  methodRef := breakTokens at: 2.
  meth := (methodRef beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: methodRef ]
    ifFalse: [ self lookupMethodIn: (breakTokens copyFrom: 2 to: breakTokens size) ].
  ^ self breakSet: meth step: stepPoint