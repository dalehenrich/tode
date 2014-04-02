as yet unclassified
findProjectDefinitionsExact: projectName
  "find project <project-name>"

  | spec |
  spec := Metacello image
    project: projectName;
    list.
  ^ (TDConfigurationDefinition new projectSpec: spec) classDefinitions