menu actions
viewAncestorVsThemMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewAncestorVsThem.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'