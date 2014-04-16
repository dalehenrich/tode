browse
browseversions
  "
  browse versions <method-spec>
"

  | list methodSpec |
  self getSubcommandOptsMixedLongShort: {}.
  methodSpec := subArguments at: 1.
  list := self findVersions: methodSpec.
  ^ self browseMethods: list label: 'Versions of ' , methodSpec