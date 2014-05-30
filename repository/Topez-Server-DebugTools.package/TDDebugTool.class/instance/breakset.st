commands
breakset
  "
  break set <method-ref> <step-point>...
"

  | methodRef meth |
  self getSubcommandOptsMixedLongShort: {}.
  methodRef := subArguments at: 1.
  meth := (methodRef beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: methodRef ]
    ifFalse: [ self methodFromMethodSpec: methodRef ].
  2 to: subArguments size do: [ :index | 
    | stepPoint |
    stepPoint := (subArguments at: index) asNumber.
    self breakSet: meth step: stepPoint ]