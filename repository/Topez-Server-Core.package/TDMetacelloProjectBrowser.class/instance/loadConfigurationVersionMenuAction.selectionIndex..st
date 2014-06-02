menu actions (configuration)
loadConfigurationVersionMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  listElement topez commitTransaction.
  ^ true