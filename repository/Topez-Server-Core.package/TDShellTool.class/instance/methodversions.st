method
methodversions
  "
  method versions <method-spec>...
"

  self getSubcommandOptsMixedLongShort: {}.
  subArguments
    do: [ :methodSpec | 
      | block |
      block := [ self findVersions: methodSpec ].
      self browseMethodsBlock: block label: 'Versions of ' , methodSpec ].
  ^ #()