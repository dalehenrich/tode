menu actions
untagMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation theTag |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  mergeOperation tag: nil.
  ^ #'refreshList'