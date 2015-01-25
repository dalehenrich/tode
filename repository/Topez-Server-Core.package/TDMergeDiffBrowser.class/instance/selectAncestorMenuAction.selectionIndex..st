menu actions
selectAncestorMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation selectAncestor.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'