menu actions
viewAncestorVsUsMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewAncestorVsUs.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'