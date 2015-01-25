menu actions
viewDefaultMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation view: nil.
  self editOperation: mergeOperation listElement: listElement.
  ^ #'refreshList'