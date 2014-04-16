browse
browsediff
  "
  browse diff <method-spec-1> <method-spec-2>
"

  | list |
  self getSubcommandOptsMixedLongShort: {}.
  list := {}.
  subArguments do: [ :arg | list addAll: (self findMethodSpec: arg) ].
  ^ self browseDiff: list