menu actions
selectUsMenuAction: listElement selectionIndex: selectionIndex
  "select left definition"

  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation selectUs.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'