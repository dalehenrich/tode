menu actions
viewThemVsCustomMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation viewThemVsCustom.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'