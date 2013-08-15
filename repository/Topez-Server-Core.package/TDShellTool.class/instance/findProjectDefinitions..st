as yet unclassified
findProjectDefinitions: projectName
  "find project <project-name>"

  | spec |
  spec := Metacello image
    project: projectName;
    list.
  ^ (TDConfigurationDefinition new projectSpec: spec) classDefinitions