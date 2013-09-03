as yet unclassified
cmdTAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "toggle display diffs"

  | mergeOperation |
  mergeOperation := listElement itemCache at: selectionIndex.
  mergeOperation toggleDisplayDiffs.
  self refreshOperation: mergeOperation listElement: listElement.
  ^ true