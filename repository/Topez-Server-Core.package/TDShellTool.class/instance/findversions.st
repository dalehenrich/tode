find
findversions
  "
  find versions <method-spec>
"

  | methodSpec |
  self getSubcommandOptsMixedLongShort: {}.
  methodSpec := subArguments at: 1.
  ^ self findVersions: methodSpec