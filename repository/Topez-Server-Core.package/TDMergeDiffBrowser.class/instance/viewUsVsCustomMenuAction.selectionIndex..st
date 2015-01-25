menu actions
viewUsVsCustomMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewUsVsCustom.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'