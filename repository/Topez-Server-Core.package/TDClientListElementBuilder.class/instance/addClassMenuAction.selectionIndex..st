menu actions
addClassMenuAction: listElement selectionIndex: selectionIndex
  | cls classDefinition superClassName |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  superClassName := cls superclass
    ifNotNil: [ :superclass | superclass name ]
    ifNil: [ 'Object' ].
  classDefinition := (GsMultiLineTextInteraction
    prompt: 'Define class: '
    template:
      (Class templateForSubclassOf: superClassName category: cls category))
    signal.
  classDefinition ifNil: [ ^ false ].
  GsDeployer bulkMigrate: [ classDefinition evaluate ].
  listElement topez resetAllGlobalNames.
  ^ #'refreshView'