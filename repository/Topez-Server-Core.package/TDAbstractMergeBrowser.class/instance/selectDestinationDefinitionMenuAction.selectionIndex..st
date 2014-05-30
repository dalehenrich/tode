menu actions
selectDestinationDefinitionMenuAction: listElement selectionIndex: selectionIndex
  "select right definition"

  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation selectDestination.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'