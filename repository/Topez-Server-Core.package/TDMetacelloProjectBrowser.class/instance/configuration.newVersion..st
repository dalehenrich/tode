menu actions (configuration)
configuration: registration newVersion: versionSelector
  | newVersionString currentVersionString configSpec currentVersion template templateVersionNumber |
  currentVersionString := registration versionString.
  configSpec := registration configurationProjectSpec.
  currentVersion := (MetacelloToolBox configurationNamed: configSpec name)
    project version: currentVersionString.
  templateVersionNumber := currentVersion versionNumber copy.
  template := (templateVersionNumber perform: versionSelector) versionString.
  newVersionString := (GsTextInteraction
    prompt: 'New version string'
    template: template) signal.
  newVersionString ifNil: [ ^ false ].
  self projectTool
    projectCreateConfigurationDevelopmentVersion: registration
      spec: configSpec
      version: newVersionString
      from: currentVersion;
    projectRegisterConfiguration: registration version: newVersionString.
  ^ true