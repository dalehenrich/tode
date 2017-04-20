commands
gsobjectFor
  "
  gs objectFor <object-oop>...
"

  | oops |
  self getSubcommandOptsMixedLongShort: {}.
  oops := {}.
  subArguments isEmpty
    ifTrue: [ 
      self
        error:
          'Missing required argument <object-oop>.  See `man gs objectFor` for details.' ].
  subArguments
    do: [ :oopArg | 
      | oop |
      oop := oopArg asNumber.
      oops add: (Object _objectForOop: oop) ].
  ^ oops