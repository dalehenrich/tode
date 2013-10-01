menu actions
toggleDiffMenuAction: listElement selectionIndex: selectionIndex
  "toggle display diffs"

  | mergeOperation |
  mergeOperation := listElement itemCache at: selectionIndex.
  mergeOperation toggleDisplayDiffs.
  self refreshOperation: mergeOperation listElement: listElement.
  ^ true