as yet unclassified
createDefinitionList
  | wcs defs |
  wcs := MCWorkingCopy allManagers.
  defs := wcs
    collect: [ :wc | TDMcPackageDefinition new packageName: wc packageName ].
  defs sort: [ :a :b | a label <= b label ].
  ^ defs