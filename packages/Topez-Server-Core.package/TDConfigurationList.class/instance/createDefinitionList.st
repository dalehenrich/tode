as yet unclassified
createDefinitionList
  | specs defs |
  specs := MetacelloProjectRegistration projectSpecs.
  defs := specs collect: [ :projectSpec | TDConfigurationDefinition new configurationName: projectSpec name ].
  defs sort: [ :a :b | a label <= b label ].
  ^ defs