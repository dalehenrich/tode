menu actions
addClassMenuAction: listElement selectionIndex: selectionIndex
  | cls classDefinition |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  classDefinition := (GsMultiLineTextInteraction
    prompt: 'Define class: '
    template: (Class template: cls category)) signal.
  classDefinition ifNil: [ ^ false ].
  GsDeployer bulkMigrate: [ classDefinition evaluate ].
  listElement topez resetAllGlobalNames.
  ^ #'refreshView'