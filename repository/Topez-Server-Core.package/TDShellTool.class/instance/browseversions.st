browse
browseversions
  "
  browse versions <method-spec>
"

  | list arg |
  list := self
    findVersions: subArguments
    labelBlock: [ :methodSpec | arg := methodSpec ].
  ^ self browseMethods: list label: 'Versions of ' , arg