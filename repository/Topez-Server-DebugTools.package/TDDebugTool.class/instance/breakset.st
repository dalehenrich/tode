commands
breakset
  "
  break set <method-ref> <step-point>...
"

  | methodRef meth |
  self getSubcommandOptsMixedLongShort: {}.
  methodRef := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <method-ref>. See `man break set` for details.' ].
  meth := (methodRef beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: methodRef ]
    ifFalse: [ self methodFromMethodSpec: methodRef ].
  subArguments size = 2
    ifTrue: [ 
      self
        error:
          'Missing required argument <step-point>.  See `man break set` for details.' ].
  2 to: subArguments size do: [ :index | 
    | stepPoint |
    stepPoint := (subArguments at: index) asNumber.
    self breakSet: meth step: stepPoint ]