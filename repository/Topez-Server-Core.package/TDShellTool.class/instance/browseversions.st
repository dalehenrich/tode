browse
browseversions
  "
  browse versions <method-spec>
"

  | block methodSpec |
  self getSubcommandOptsMixedLongShort: {}.
  methodSpec := subArguments at: 1.
  block := [ self findVersions ].
  ^ self browseMethodsBlock: block label: 'Versions of ' , methodSpec