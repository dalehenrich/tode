menu actions
toggleDiffMenuAction: listElement selectionIndex: selectionIndex
  "toggle display diffs"

  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation toggleDisplayDiffs.
  self editOperation: mergeOperation listElement: listElement.
  ^ true