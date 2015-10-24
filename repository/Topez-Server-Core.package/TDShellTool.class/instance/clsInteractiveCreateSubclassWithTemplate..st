cls
clsInteractiveCreateSubclassWithTemplate: classCreationTemplate
  | newClass classDefinition |
  classDefinition := (GsMultiLineTextInteraction
    prompt: 'Define class: '
    template: classCreationTemplate) signal.
  classDefinition ifNil: [ ^ nil ].
  GsDeployer bulkMigrate: [ newClass := classDefinition evaluate ].
  self topez resetAllGlobalNames.
  ^ newClass