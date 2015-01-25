menu actions
viewUsVsThemMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewUsVsThem.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'