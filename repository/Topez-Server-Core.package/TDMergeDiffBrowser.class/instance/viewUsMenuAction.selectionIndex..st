menu actions
viewUsMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewUs.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'