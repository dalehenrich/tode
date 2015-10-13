as yet unclassified
gsobjectFor
  "
  gs objectFor <object-oop>...
"

  | oops |
  self getSubcommandOptsMixedLongShort: {}.
  oops := {}.
  subArguments
    do: [ :oopArg | 
      | oop |
      oop := oopArg asNumber.
      oops add: (Object _objectForOop: oop) ].
  ^ oops