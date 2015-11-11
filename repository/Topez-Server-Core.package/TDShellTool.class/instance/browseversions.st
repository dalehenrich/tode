browse
browseversions
  "
  browse versions <method-spec>
"

  | block methodSpec |
  self getSubcommandOptsMixedLongShort: {}.
  methodSpec := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <method-spec>. See `man browse versions` for details.' ].
  block := [ self findVersions ].
  ^ self browseMethodsBlock: block label: 'Versions of ' , methodSpec