menu actions
viewAncestorMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewAncestor.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'