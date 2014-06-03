menu actions (configuration)
createReleaseConfigurationVersionMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  MetacelloToolBox
    releaseVersion: registration versionString
    for: registration projectName.
  listElement topez commitTransaction.
  ^ #'refreshView'