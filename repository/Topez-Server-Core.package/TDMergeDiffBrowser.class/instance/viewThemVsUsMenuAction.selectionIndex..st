menu actions
viewThemVsUsMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewThemVsUs.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'