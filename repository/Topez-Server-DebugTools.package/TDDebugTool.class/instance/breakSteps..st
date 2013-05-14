as yet unclassified
breakSteps: breakTokens
  "db break steps <method-ref>"

  | meth stepSource methodRef |
  methodRef := breakTokens at: 2.
  meth := (methodRef beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: methodRef ]
    ifFalse: [ self lookupMethodIn: (breakTokens copyFrom: 2 to: breakTokens size) ].
  stepSource := self stepsForMethod: meth.
  stepSource editUsing: (TDEditorSpec topez: topez editorAspect: #'edit')