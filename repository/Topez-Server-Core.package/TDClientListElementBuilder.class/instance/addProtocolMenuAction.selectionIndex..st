menu actions
addProtocolMenuAction: listElement selectionIndex: selectionIndex
  | beh clsTool newName |
  beh := self theBehavior.
  newName := (GsTextInteraction prompt: 'protocol name' template: '') signal.
  newName ifNil: [ ^ false ].
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool protocol: beh add: {newName}.
  ^ #'refreshView'