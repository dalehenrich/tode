menu actions
unregisterProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  registration unregister.
  listElement topez commitTransaction.
  ^ #'refreshView'