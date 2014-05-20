menu actions (configuration)
createConfigurationNewMajorVersionMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  ^ self configuration: registration newVersion: #'incrementMajorVersion'