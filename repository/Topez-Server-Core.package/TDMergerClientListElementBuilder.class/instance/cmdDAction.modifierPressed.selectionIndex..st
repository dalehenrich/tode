as yet unclassified
cmdDAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "select local definition"

  | mergeOperation |
  mergeOperation := listElement itemCache at: selectionIndex.
  mergeOperation selectLocal.
  self refreshOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'