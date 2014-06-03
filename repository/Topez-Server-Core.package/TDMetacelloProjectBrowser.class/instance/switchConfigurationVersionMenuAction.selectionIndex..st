menu actions (configuration)
switchConfigurationVersionMenuAction: listElement selectionIndex: selectionIndex
  | registration versions labelArray selectedIndex |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  versions := (MetacelloToolBox configurationNamed: registration projectName)
    project versions reversed.
  labelArray := versions collect: [ :each | each versionString ].
  selectedIndex := (GsChoiceInteraction
    prompt: 'Choose a version'
    labels: labelArray
    values: nil) signal.
  selectedIndex ifNil: [ ^ false ].
  self projectTool
    projectRegisterConfiguration: registration
    version: (labelArray at: selectedIndex).
  listElement topez commitTransaction.
  ^ #'refreshView'