as yet unclassified
findProjectClassDefinitionsExact: projectName
  "find project <project-name>"

  | spec |
  spec := (Metacello image
    project: projectName;
    list) first.
  ^ (TDConfigurationDefinition new projectSpec: spec) classDefinitions