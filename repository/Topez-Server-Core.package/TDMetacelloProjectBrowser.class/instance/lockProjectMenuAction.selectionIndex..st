menu actions
lockProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  projectTool projectLock: registration.
  listElement topez commitTransaction.
  ^ #'refreshView'