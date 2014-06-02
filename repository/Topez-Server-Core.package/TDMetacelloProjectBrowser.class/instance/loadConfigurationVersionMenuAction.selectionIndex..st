menu actions (configuration)
loadConfigurationVersionMenuAction: listElement selectionIndex: selectionIndex
  | registration versions currentVersion labelArray selectedVersionIndex selectedVersion project currentVersionString |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  currentVersionString := registration versionString.
  project := registration projectClassProject.
  currentVersion := project version: currentVersionString.
  versions := project versions reversed
    select: [ :vrsn | currentVersion == nil or: [ vrsn >= currentVersion ] ].
  labelArray := versions collect: [ :each | each versionString ].
  selectedVersionIndex := (GsChoiceInteraction
    prompt: 'Choose a version'
    labels: labelArray
    values: nil) signal.
  selectedVersionIndex ifNil: [ ^ false ].
  selectedVersion := versions at: selectedVersionIndex.
  projectTool
    projectLoadConfiguration: registration projectName
    version: selectedVersion versionString
    repositoryDescription: registration repositoryDescription
    loads: selectedVersion defaultPackageNamesToLoad.
  listElement topez commitTransaction.
  ^ #'refreshView'