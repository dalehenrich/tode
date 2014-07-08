menu actions
copyClassMenuAction: listElement selectionIndex: selectionIndex
  | cls classDefinition clsTool newName |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  newName := (GsTextInteraction prompt: 'New class name' template: cls name)
    signal.
  newName ifNil: [ ^ false ].
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool clscopy: cls to: newName.
  ^ #'refreshView'