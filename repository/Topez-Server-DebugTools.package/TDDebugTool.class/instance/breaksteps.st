commands
breaksteps
  "
  break steps <method-ref>...
"

  self getSubcommandOptsMixedLongShort: {}.
  subArguments isEmpty
    ifTrue: [ 
      self
        error:
          'Missing required argument <method-ref>.  See `man break steps` for details.' ].
  subArguments
    do: [ :methodRef | 
      | meth |
      meth := (methodRef beginsWith: '@')
        ifTrue: [ self resolveAtPathReference: methodRef ]
        ifFalse: [ self methodFromMethodSpec: methodRef ].
      self browseStepPoints: meth ]