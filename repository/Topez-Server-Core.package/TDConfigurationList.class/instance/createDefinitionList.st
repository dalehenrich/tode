as yet unclassified
createDefinitionList
  | specs defs metacelloTool |
  metacelloTool := (TDTopezServer for: 0) toolInstanceFor: 'project'.
  specs := metacelloTool projectRegistrationDefinitionList
    select: [ :each | each isMetacelloProject ].
  defs := specs
    collect: [ :def | TDConfigurationDefinition new projectSpec: def projectSpec ].
  defs sort: [ :a :b | a label <= b label ].
  ^ defs