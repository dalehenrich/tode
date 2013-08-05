as yet unclassified
findProjectDefinitions: findTokens
  "find project <project-name>"

  | projectName spec |
  projectName := findTokens at: 2.
  spec := Metacello image
    project: projectName;
    list.
  ^ (TDConfigurationDefinition new projectSpec: spec) classDefinitions