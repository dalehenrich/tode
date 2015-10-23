cls
clsInteractiveCreateSubclassOf: superClassName category: category
  | newClass classDefinition |
  classDefinition := (GsMultiLineTextInteraction
    prompt: 'Define class: '
    template: (Class templateForSubclassOf: superClassName category: category))
    signal.
  classDefinition ifNil: [ ^ nil ].
  GsDeployer bulkMigrate: [ newClass := classDefinition evaluate ].
  self topez resetAllGlobalNames.
  ^ newClass