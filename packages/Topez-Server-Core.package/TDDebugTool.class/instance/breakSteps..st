as yet unclassified
breakSteps: breakTokens
  "steps <class> [class] >> <selector>"

  "steps <class>[ class]>><selector>"

  | meth stepSource |
  meth := self lookupMethodIn: (breakTokens copyFrom: 2 to: breakTokens size).
  stepSource := self stepsForMethod: meth.
  stepSource edit: topez windowId: nil