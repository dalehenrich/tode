menu actions
selectLocalDefinitionMenuAction: listElement selectionIndex: selectionIndex
  "select local definition"

  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation selectLocal.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'