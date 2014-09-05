as yet unclassified
findProjectDefinitionsExact: projectName
  "find project <project-name>"

  | spec result |
  result := Metacello image
    project: projectName;
    list.
  spec := result isCollection
    ifTrue: [ result first ]
    ifFalse: [ 
      "old-style result from `list` command ... safe to remove after MetacelloPreview1.0.0-beta.32.15 is wide distribution"
      result ].
  ^ (TDConfigurationDefinition new projectSpec: spec) classDefinitions