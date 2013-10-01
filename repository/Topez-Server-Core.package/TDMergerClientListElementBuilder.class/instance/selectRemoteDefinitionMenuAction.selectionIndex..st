menu actions
selectRemoteDefinitionMenuAction: listElement selectionIndex: selectionIndex
  "select remote definition"

  | mergeOperation |
  mergeOperation := listElement itemCache at: selectionIndex.
  mergeOperation selectRemote.
  self refreshOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'