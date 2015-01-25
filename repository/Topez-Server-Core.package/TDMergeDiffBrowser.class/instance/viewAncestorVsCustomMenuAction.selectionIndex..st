menu actions
viewAncestorVsCustomMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewAncestorVsCustom.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'