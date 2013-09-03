as yet unclassified
cmdRAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "select remote definition"

  | mergeOperation |
  mergeOperation := listElement itemCache at: selectionIndex.
  mergeOperation selectRemote.
  self refreshOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'