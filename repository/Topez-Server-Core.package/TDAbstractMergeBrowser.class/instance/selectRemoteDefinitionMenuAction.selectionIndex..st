menu actions
selectRemoteDefinitionMenuAction: listElement selectionIndex: selectionIndex
  "select remote definition"

  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation selectRemote.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'