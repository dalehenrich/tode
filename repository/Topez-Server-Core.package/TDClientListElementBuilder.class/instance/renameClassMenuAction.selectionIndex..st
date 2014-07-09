menu actions
renameClassMenuAction: listElement selectionIndex: selectionIndex
  | cls clsTool newName |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  newName := (GsTextInteraction prompt: 'New name for class' template: cls name)
    signal.
  newName ifNil: [ ^ false ].
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool clsrename: cls to: newName.
  ^ #'refreshView'