menu actions
unlockProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  projectTool projectUnlock: registration.
  listElement topez commitTransaction.
  ^ #'refreshView'