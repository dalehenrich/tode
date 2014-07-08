menu actions
addSubClassMenuAction: listElement selectionIndex: selectionIndex
  | cls classDefinition |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  classDefinition := (GsMultiLineTextInteraction
    prompt: 'Define class: '
    template:
      (Class templateForSubclassOf: cls name asString category: cls category))
    signal.
  classDefinition ifNil: [ ^ false ].
  GsDeployer bulkMigrate: [ classDefinition evaluate ].
  listElement topez resetAllGlobalNames.
  ^ #'refreshView'