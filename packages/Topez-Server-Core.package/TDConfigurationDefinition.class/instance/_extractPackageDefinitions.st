as yet unclassified
_extractPackageDefinitions
  | version defs |
  version := self projectSpec version.
  defs := Dictionary new.
  version packages
    do: [ :pkg | defs at: pkg name put: (TDPackageDefinition new packageName: pkg name) ].
  ^ defs