menu actions
addSubClassMenuAction: listElement selectionIndex: selectionIndex
  | cls classDefinitionString |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  classDefinitionString := (GsMultiLineTextInteraction
    prompt: 'Define class: '
    template:
      (Class templateForSubclassOf: cls name asString category: cls category))
    signal.
  classDefinitionString ifNil: [ ^ false ].
  listElement topez createClassFrom: classDefinitionString.
  ^ #'refreshView'