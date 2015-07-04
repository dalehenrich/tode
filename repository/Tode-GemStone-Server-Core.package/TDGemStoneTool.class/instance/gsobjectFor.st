as yet unclassified
gsobjectFor
  "gs objectFor <object-oop>"

  | oop |
  self getSubcommandOptsMixedLongShort: {}.
  oop := (subArguments at: 1) asNumber.
  ^ Object _objectForOop: oop