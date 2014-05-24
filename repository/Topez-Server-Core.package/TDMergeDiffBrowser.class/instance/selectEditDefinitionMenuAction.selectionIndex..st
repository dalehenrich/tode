menu actions
selectEditDefinitionMenuAction: listElement selectionIndex: selectionIndex
  "select edit definition"

  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation selectEdit.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'