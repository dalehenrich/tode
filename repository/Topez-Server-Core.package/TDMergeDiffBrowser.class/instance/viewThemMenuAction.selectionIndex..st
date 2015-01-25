menu actions
viewThemMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewThem.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'