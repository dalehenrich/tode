menu actions
selectCustomMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation selectCustom.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'