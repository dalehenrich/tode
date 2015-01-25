menu actions
viewCustomMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewCustom.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'