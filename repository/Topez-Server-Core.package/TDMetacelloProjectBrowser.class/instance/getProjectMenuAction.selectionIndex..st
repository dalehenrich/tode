menu actions
getProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration loads |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  self projectTool projectGetFor: registration.
  listElement topez commitTransaction.
  ^ #'refreshView'