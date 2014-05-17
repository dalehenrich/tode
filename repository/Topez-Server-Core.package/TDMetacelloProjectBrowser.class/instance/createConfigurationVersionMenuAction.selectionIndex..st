menu actions (configuration)
createConfigurationVersionMenuAction: listElement selectionIndex: selectionIndex
  | registration newVersionString currentVersionString configSpec currentVersion template |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  currentVersionString := registration versionString.
  configSpec := registration configurationProjectSpec.
  currentVersion := (MetacelloToolBox configurationNamed: configSpec name)
    project version: currentVersionString.
  template := currentVersion versionNumber copy incrementMinorVersionNumber
    versionString.
  newVersionString := (GsTextInteraction
    prompt: 'New version string'
    template: template) signal.
  newVersionString ifNil: [ ^ false ].
  self projectTool
    projectCreateDevelopmentVersion: registration
    spec: configSpec
    version: newVersionString
    from: currentVersion.
  ^ #'refreshList'