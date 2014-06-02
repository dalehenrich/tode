menu actions (configuration)
createConfigurationNewPatchVersionMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  (self configuration: registration newVersion: #'incrementPatchVersion')
    ifFalse: [ ^ false ].
  listElement topez commitTransaction.
  ^ #'refreshView'