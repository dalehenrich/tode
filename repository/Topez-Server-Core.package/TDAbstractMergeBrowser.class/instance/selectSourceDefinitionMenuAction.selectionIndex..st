menu actions
selectSourceDefinitionMenuAction: listElement selectionIndex: selectionIndex
  "select left definition"

  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation selectSource.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'