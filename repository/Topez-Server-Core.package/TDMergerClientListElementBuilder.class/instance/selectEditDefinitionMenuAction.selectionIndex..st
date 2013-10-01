menu actions
selectEditDefinitionMenuAction: listElement selectionIndex: selectionIndex
  "select edit definition"

  | mergeOperation |
  mergeOperation := listElement itemCache at: selectionIndex.
  mergeOperation selectEdit.
  self refreshOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'