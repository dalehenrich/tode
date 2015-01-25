menu actions
selectThemMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation selectThem.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'