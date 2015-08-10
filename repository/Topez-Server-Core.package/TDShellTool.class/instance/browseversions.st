browse
browseversions
  "
  browse versions <method-spec>
"

  | block methodSpec |
  self getSubcommandOptsMixedLongShort: {}.
  methodSpec := subArguments at: 1.
  block := [ 
  | list |
  list := self findVersions: methodSpec.
  list := self filterBrowseList: list ].
  ^ self browseMethodsBlock: block label: 'Versions of ' , methodSpec