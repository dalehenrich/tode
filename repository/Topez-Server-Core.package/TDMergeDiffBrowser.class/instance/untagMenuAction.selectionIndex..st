menu actions
untagMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations do: [ :mergeOperation | mergeOperation tag: nil ].
  ^ #'refreshList'