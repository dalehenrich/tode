method
methodbrowse
  "
  method browse <method-spec>...
"

  | list label |
  self getSubcommandOptsMixedLongShort: {}.
  list := Set new.
  label := 'Implementors of'.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  subArguments do: [ :arg | list addAll: (self findMethodSpec: arg) ].
  ^ self browseMethods: list label: label